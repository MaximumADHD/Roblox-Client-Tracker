#version 150

const float f0[32] = float[](0.0, 0.5, 0.25, 0.75, 0.125, 0.625, 0.375, 0.875, 0.0625, 0.5625, 0.3125, 0.8125, 0.1875, 0.6875, 0.4375, 0.9375, 0.03125, 0.53125, 0.28125, 0.78125, 0.15625, 0.65625, 0.40625, 0.90625, 0.09375, 0.59375, 0.34375, 0.84375, 0.21875, 0.71875, 0.46875, 0.96875);

struct ParamsIBL
{
    vec4 normalTransformRow0;
    vec4 normalTransformRow1;
    vec4 normalTransformRow2;
    vec4 roughness;
};

uniform vec4 CB2[4];
uniform samplerCube envMapTexture;

in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec3 f1 = normalize(VARYING1);
    float f2 = (CB2[3].x * 5.0) - 1.0;
    vec3 f3;
    float f4;
    f4 = 0.0;
    f3 = vec3(0.0);
    vec3 f5;
    float f6;
    for (int f7 = 0; f7 < 32; f4 = f6, f3 = f5, f7++)
    {
        float f8 = CB2[3].x * CB2[3].x;
        float f9 = sqrt((1.0 - f0[f7]) / (1.0 + (((f8 * f8) - 1.0) * f0[f7])));
        float f10 = sqrt(1.0 - (f9 * f9));
        float f11 = float(f7) * 0.19634954631328582763671875;
        bvec3 f12 = bvec3(abs(f1.z) < 0.999000012874603271484375);
        vec3 f13 = normalize(cross(vec3(f12.x ? vec3(0.0, 0.0, 1.0).x : vec3(1.0, 0.0, 0.0).x, f12.y ? vec3(0.0, 0.0, 1.0).y : vec3(1.0, 0.0, 0.0).y, f12.z ? vec3(0.0, 0.0, 1.0).z : vec3(1.0, 0.0, 0.0).z), f1));
        vec3 f14 = ((f13 * (f10 * cos(f11))) + (cross(f1, f13) * (f10 * sin(f11)))) + (f1 * f9);
        vec3 f15 = (f14 * (2.0 * dot(f1, f14))) - f1;
        float f16 = clamp(dot(f1, f15), 0.0, 1.0);
        if (f16 > 0.0)
        {
            f6 = f4 + f16;
            f5 = f3 + (textureLod(envMapTexture, vec4(f15, f2).xyz, f2).xyz * f16);
        }
        else
        {
            f6 = f4;
            f5 = f3;
        }
    }
    _entryPointOutput = vec4(f3 / vec3(f4), 0.0);
}

//$$envMapTexture=s0
