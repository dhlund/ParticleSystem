#include "particlesystem.h"
#include "Tracy.hpp"
#include <cmath>
#include <random>
#include <iostream>
#include "Particle.h"
#include "Emitter.h"


namespace {
    constexpr float Pi = 3.141592654f;
    const float Tau = 2.f * Pi;
} // namespace

ParticleSystem::ParticleSystem() {
    //std::vector<rendering::ParticleInfo> particles;
    //std::vector<rendering::EmitterInfo> emitters;
    std::vector<Particle> myParticles;
    std::vector<Emitter> myEmitters;


}

void ParticleSystem::update(float dt, float angle, float pps) {
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
                addParticle(myEmitters[j].position, 5, myEmitters[j].color, 5, myEmitters[j]);
                myEmitters[j].timeval = 0;
            }

            if (!myParticles.empty()) {

                for (int i = 0; i < myParticles.size(); i++) {
                    myParticles[i].position.x =
                        myParticles[i].position.x + myParticles[i].velocity.x * dt;
                    myParticles[i].position.y =
                        myParticles[i].position.y + myParticles[i].velocity.y * dt;
                }
            }
        }
    }
}

void ParticleSystem::render() {
    // @TODO: Render the particles, emitters and what not contained within the system
    rendering::renderParticles(toRenderparticles(myParticles));
    rendering::renderEmitters(toRenderemitters(myEmitters));

}

void ParticleSystem::addParticle(vec2 position, float lifetime, Color color, float radius, Emitter emitter)
{
    //if(emitter.timeval >= 1-emitter.pps)
    //{
        Particle particle;
        particle.color = color;
        particle.position = position;
        particle.lifetime = lifetime;
        particle.radius = radius;
        particle.velocity = {(emitter.vel*cos(emitter.angle)), emitter.vel*sin(emitter.angle)};
        myParticles.push_back(particle);
        emitter.timeval = 0;
    //}


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