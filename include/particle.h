#ifndef __PARTICLE_H__
#define __PARTICLE_H__

#include "util/color.h"
#include "util/rendering.h"
#include "util/vec2.h"
#include <vector>

class Particle {
    public:
        std::vector<Particle> particles;
        vec2 position{0,0};
        float lifetime;
        Color color = {0,0,0};
        vec2 velocity{0,0};
        float radius{2};

     Particle();
};
#endif