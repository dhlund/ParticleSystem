#ifndef __EMITTER_H__
#define __EMITTER_H__

#include "util/color.h"
#include "util/rendering.h"
#include "util/vec2.h"
#include <vector>

class Emitter {
    public:
        vec2 position{0,0};
        std::vector<Emitter> emitters;
        float angle{};
        float vel{};
        float pps{};
        float spread{};
        float timeval{};
        bool rot;
        Color color;
        Emitter();
};
#endif
