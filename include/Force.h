#include "util/color.h"
#include "util/rendering.h"
#include "util/vec2.h"
#include <vector>

class Force {
public:
    vec2 position{0,0};
    float size;
    float force;

    Force();

};