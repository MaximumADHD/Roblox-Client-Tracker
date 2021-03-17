#version 150

const float f0[32] = float[](0.0, 0.5, 0.25, 0.75, 0.125, 0.625, 0.375, 0.875, 0.0625, 0.5625, 0.3125, 0.8125, 0.1875, 0.6875, 0.4375, 0.9375, 0.03125, 0.53125, 0.28125, 0.78125, 0.15625, 0.65625, 0.40625, 0.90625, 0.09375, 0.59375, 0.34375, 0.84375, 0.21875, 0.71875, 0.46875, 0.96875);

uniform vec4 CB3[1];
uniform samplerCube envMapTexture;

out vec4 _entryPointOutput;

void main()
{
    bvec3 f1 = bvec3(abs(CB3[0].y) < 0.999000012874603271484375);
    vec3 f2 = cross(vec3(f1.x ? vec3(0.0, 1.0, 0.0).x : vec3(1.0, 0.0, 0.0).x, f1.y ? vec3(0.0, 1.0, 0.0).y : vec3(1.0, 0.0, 0.0).y, f1.z ? vec3(0.0, 1.0, 0.0).z : vec3(1.0, 0.0, 0.0).z), CB3[0].xyz);
    int f3;
    vec3 f4;
    f4 = vec3(0.0);
    f3 = 0;
    float f5;
    for (;;)
    {
        f5 = float(f3);
        if (f5 < 16.0)
        {
            float f6 = f5 * 0.03125;
            float f7 = sqrt(f6);
            float f8 = f0[f3] * 6.283185482025146484375;
            f4 += textureLod(envMapTexture, vec4(((f2 * (f7 * cos(f8))) + (cross(CB3[0].xyz, f2) * (f7 * sin(f8)))) + (CB3[0].xyz * sqrt(1.0 - f6)), 3.0).xyz, 3.0).xyz;
            f3++;
            continue;
        }
        else
        {
            break;
        }
    }
    _entryPointOutput = vec4(f4 * 0.0625, 0.0) * 0.25;
}

//$$envMapTexture=s0
