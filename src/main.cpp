#define _USE_MATH_DEFINES
#include "Tracy.hpp"
#include "particlesystem.h"
#include "util/rendering.h"

#include <algorithm>
#include <iterator>
#include <random>
#include <Emitter.h>
#include <cmath>
#include <iostream>

// A function strictly used to exemplify the
// render[Particles/Emitters/Forces] functions.
// Note: This function should be removed in your final implementation.
void particleRenderingExample();

int main(int, char**) {
    rendering::createWindow();

    ParticleSystem particleSystem;

    vec2 coord{};
    float angle = 0;
    float pps = 0.7f;
    float speed = 0.05f;
    float lifetime = 8;
    Color myColor = Color(1,1,1);
    bool isRunning = true;
    bool gravity = false;
    while (isRunning) {
        const float dt = rendering::beginFrame();

        {
            ui::GuiScope ui;  // Initiates and finalizes UI rendering upon
                              // construction/destruction

            ui::text("Particle system");
            ui::sliderFloat("Simulation speed", speed, 0.001f, 0.1f);
            ui::sliderFloat("Particles spawn speed", pps, 0.5f, 0.8);
            ui::sliderFloat("Lifetime", lifetime, 2, 25);
            ui::sliderFloat("Angle for adjustable emitter", angle, 0, (float)2*M_PI);
            ui::colorPicker("Color picker", myColor);
            ui::sliderVec2("X, Y Coordinates", coord, -1, 1);


            if(ui::button("Add Spinning Emitter"))
            {
                std::cout << "Adding emitter..." << std::endl;
                particleSystem.addEmitter(coord, (float)M_PI_4, 5, 0, true, myColor);
            }
            if(ui::button("Add Adjustable Emitter"))
            {
                std::cout << "Adding emitter..." << std::endl;
                particleSystem.addEmitter(coord, 0, 5, 0, false, myColor);
            }

            if(ui::button("Add Force"))
            {
                std::cout << "Adding force..." << std::endl;
                particleSystem.addForce(coord,(float)M_PI_4, 2000);
            }
            if(ui::button("Toggle Gravity"))
            {
                gravity = !gravity;
            }

            if (ui::button("Close application")) {
                isRunning = false;
            }
        }

        particleSystem.update(dt * speed, angle, pps, lifetime, gravity);
        particleSystem.render();

        // particle generation and rendering example. Remove in your implementation.
        //particleRenderingExample();

        isRunning &= rendering::endFrame();
    }

    rendering::destroyWindow();

    return EXIT_SUCCESS;
}

void particleRenderingExample() {
    // One-time initialization of particles. The lambda function creates
    // random ParticleInfo. The ParticleInfo struct contains all visual properties
    // used to render particles.
    static std::vector<rendering::ParticleInfo> particles = [](size_t numberOfParticles = 100) {
        std::random_device rd;
        std::mt19937 gen(rd());  // Standard mersenne_twister_engine seeded with rd()
        // Closed interval distribution helper. [first, last) -> [first, last]
        auto closedInterval = [](float val) {
            return std::nextafter(val, std::numeric_limits<float>::max());
        };
        // particle data distributions
        // Position in [-1,1] = Screen extent
        std::uniform_real_distribution<float> posDist(-1.f, closedInterval(1.f));
        // Color [0, 1] per channel
        std::uniform_real_distribution<float> colorDist(0.f, closedInterval(1.f));
        // Radius
        std::uniform_real_distribution<float> radiusDist(1.f, closedInterval(10.f));

        // Use the distributions to initialize the ParticleInfo structs
        std::vector<rendering::ParticleInfo> randomParticles;
        std::generate_n(std::back_inserter(randomParticles), numberOfParticles,
                        [posDist, colorDist, radiusDist, &gen]() {
                            auto lifetime = 10.f;
                            return rendering::ParticleInfo{
                                {posDist(gen), posDist(gen)},
                                radiusDist(gen),
                                {colorDist(gen), colorDist(gen), colorDist(gen)},
                                lifetime};
                        });

        return randomParticles;
    }();

    // Issue the draw call to render all particles at once.
    rendering::renderParticles(particles);
}
