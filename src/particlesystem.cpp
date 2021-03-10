#include "particlesystem.h"
#include "Tracy.hpp"
#include <cmath>
#include <random>
#include <iostream>
#include "Particle.h"
#include "Emitter.h"
#include "Force.h"


namespace {
    constexpr float Pi = 3.141592654f;
    const float Tau = 2.f * Pi;
} // namespace

ParticleSystem::ParticleSystem() {
    std::vector<Particle> myParticles;
    std::vector<Emitter> myEmitters;
    std::vector<Force> myForces;
}

void ParticleSystem::update(float dt, float angle, float pps, float lifetime, bool gravity) {
    // @TODO: Update the state of the particle system, move particles forwards, spawn new
    // particles, destroy old particles, and apply effects

    if (!myEmitters.empty()) {
        for (int j = 0; j < myEmitters.size(); j++) {
            myEmitters[j].pps = pps;
            myEmitters[j].timeval += dt * 100;

            if (myEmitters[j].rot) {
                myEmitters[j].angle += 0.002;
            }
            else myEmitters[j].angle = angle;

            if (myEmitters[j].timeval >= 1 - myEmitters[j].pps) {
                addParticle(myEmitters[j].position, lifetime, myEmitters[j].color, 3, myEmitters[j]);
                myEmitters[j].timeval = 0;
            }

            if (!myParticles.empty()) {

                for (int i = 0; i < myParticles.size(); i++) {
                    if(!myForces.empty()){
                        for(int j = 0; j < myForces.size(); j++)
                        {
                            float dist = (sqrt(pow(myParticles[i].position.x - myForces[j].position.x,2) +
                                               pow(myParticles[i].position.y - myForces[j].position.y,2)));

                            vec2 diff = myParticles[i].position - myForces[j].position;

                            if (dist < 0.2) {
                                myParticles[i].velocity.x += myForces[j].force * diff.x*dt;
                                myParticles[i].velocity.y += myForces[j].force * diff.y*dt;
                            }
                        }

                        if(gravity){
                            vec2 gravity_force{0,-20};
                            myParticles[i].velocity = myParticles[i].velocity + gravity_force*dt;
                        }
                    }

                    myParticles[i].position += myParticles[i].velocity * dt;
                    myParticles[i].lifetime -= 0.001;
                    if(myParticles[i].lifetime <= 0) myParticles.erase(myParticles.begin()+i);
                }
            }
        }
    }
}

void ParticleSystem::render() {
    // @TODO: Render the particles, emitters and what not contained within the system
    rendering::renderParticles(toRenderparticles(myParticles));
    rendering::renderEmitters(toRenderemitters(myEmitters));
    rendering::renderForces(toRenderforces(myForces));

}

void ParticleSystem::addForce(vec2 position, float angle, float force)
{
    Force myForce;
    myForce.position = position;
    myForce.angle = angle;
    myForce.force = force;

    myForce.force_tot = {0,0};

    myForces.push_back(myForce);
}

void ParticleSystem::addParticle(vec2 position, float lifetime, Color color, float radius, Emitter emitter)
{

    Particle particle;
    particle.color = color;
    particle.position = position;
    particle.lifetime = lifetime;
    particle.radius = radius;
    particle.velocity = {(emitter.vel * cos(emitter.angle)), emitter.vel * sin(emitter.angle)};
    myParticles.push_back(particle);
    emitter.timeval = 0;
}

void ParticleSystem::addEmitter(vec2 position,float angle, float vel, float timeval, bool rot, Color color)
{
    Emitter myEmitter;
    myEmitter.position = position;
    myEmitter.angle = angle;
    myEmitter.vel = vel;
    myEmitter.timeval = timeval;
    myEmitter.rot = rot;
    myEmitter.color = color;
    myEmitters.push_back(myEmitter);
}

std::vector<rendering::ParticleInfo> ParticleSystem::toRenderparticles(std::vector<Particle> v) {
    std::vector<rendering::ParticleInfo> rend;

    for (auto i : v) {

        rendering::ParticleInfo temp;
        temp.color = i.color;
        temp.lifetime = i.lifetime;
        temp.position = i.position;
        temp.radius = i.radius;
        rend.push_back(temp);
    }
    return rend;
}
std::vector<rendering::EmitterInfo> ParticleSystem::toRenderemitters(std::vector<Emitter> v) {
    std::vector<rendering::EmitterInfo> rendEmitter;

    for (auto i : v) {

        rendering::EmitterInfo temp;
        temp.color = i.color;
        temp.position = i.position;
        temp.size = 20;
        rendEmitter.push_back(temp);
    }
    return rendEmitter;
}

std::vector<rendering::ForceInfo> ParticleSystem::toRenderforces(std::vector<Force> v) {
    std::vector<rendering::ForceInfo> rendForce;

    for (auto i : v) {

        rendering::ForceInfo temp;
        temp.color = Color(1,0,0);
        temp.position = i.position;
        temp.size = 20;
        rendForce.push_back(temp);
    }
    return rendForce;
}