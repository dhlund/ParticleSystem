#ifndef __FORCE_H__
#define __FORCE_H__

#include "util/color.h"
#include "util/rendering.h"
#include "util/vec2.h"
#include <vector>

class Force {
public:
    vec2 position{0,0};
    float size;
    float force;
    float angle;
    vec2 force_tot{0,0};

    Force();

};
#endif