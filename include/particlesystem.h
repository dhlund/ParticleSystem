#ifndef __PARTICLESYSTEM_H__
#define __PARTICLESYSTEM_H__

#include "util/color.h"
#include "util/rendering.h"
#include "util/vec2.h"
#include <vector>
#include <Emitter.h>
#include <Particle.h>


class ParticleSystem {
public:
    ParticleSystem();
    std::vector<Particle> myParticles;
    std::vector<Emitter> myEmitters;
    void update(float dt, float angle, float pps);
    void render();
    void addParticle(vec2 position, float lifetime, Color color, float radius, Emitter emitter);
    void ParticleSystem::addEmitter(vec2 position,float angle, float vel, float timeval, bool rot, Color color);
    std::vector<rendering::ParticleInfo> ParticleSystem::toRenderparticles(std::vector<Particle> v);
    std::vector<rendering::EmitterInfo> ParticleSystem::toRenderemitters(std::vector<Emitter> v);
};

#endif // __PARTICLESYSTEM_H__
