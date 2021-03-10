#ifndef __PARTICLESYSTEM_H__
#define __PARTICLESYSTEM_H__

#include "util/color.h"
#include "util/rendering.h"
#include "util/vec2.h"
#include <vector>
#include <Emitter.h>
#include <Particle.h>
#include <Force.h>


class ParticleSystem {
public:
    ParticleSystem();
    std::vector<Particle> myParticles;
    std::vector<Emitter> myEmitters;
    std::vector<Force> myForces;
    void update(float dt, float angle, float pps, float lifetime, bool gravity);
    void render();
    void addParticle(vec2 position, float lifetime, Color color, float radius, Emitter emitter);
    void addForce(vec2 position, float angle, float force);
    void addEmitter(vec2 position,float angle, float vel, float timeval, bool rot, Color color);
    std::vector<rendering::ParticleInfo> ParticleSystem::toRenderparticles(std::vector<Particle> v);
    std::vector<rendering::EmitterInfo> ParticleSystem::toRenderemitters(std::vector<Emitter> v);
    std::vector<rendering::ForceInfo> ParticleSystem::toRenderforces(std::vector<Force> v);
};

#endif // __PARTICLESYSTEM_H__
