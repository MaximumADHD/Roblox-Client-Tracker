#version 110
#extension GL_ARB_shader_texture_lod : require

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

varying vec3 VARYING1;

void main()
{
    vec3 f1 = normalize(VARYING1);
    vec3 f2;
    float f3;
    f3 = 0.0;
    f2 = vec3(0.0);
    vec3 f4;
    float f5;
    for (int f6 = 0; f6 < 32; f3 = f5, f2 = f4, f6++)
    {
        float f7 = float(f6);
        float f8 = f0[f6];
        float f9 = CB2[3].x * CB2[3].x;
        float f10 = sqrt((1.0 - f8) / (1.0 + (((f9 * f9) - 1.0) * f8)));
        float f11 = sqrt(1.0 - (f10 * f10));
        float f12 = f7 * 0.19634954631328582763671875;
        bvec3 f13 = bvec3(abs(f1.z) < 0.999000012874603271484375);
        vec3 f14 = normalize(cross(vec3(f13.x ? vec3(0.0, 0.0, 1.0).x : vec3(1.0, 0.0, 0.0).x, f13.y ? vec3(0.0, 0.0, 1.0).y : vec3(1.0, 0.0, 0.0).y, f13.z ? vec3(0.0, 0.0, 1.0).z : vec3(1.0, 0.0, 0.0).z), f1));
        vec3 f15 = ((f14 * (f11 * cos(f12))) + (cross(f1, f14) * (f11 * sin(f12)))) + (f1 * f10);
        vec3 f16 = (f15 * (2.0 * dot(f1, f15))) - f1;
        float f17 = clamp(dot(f1, f16), 0.0, 1.0);
        if (f17 > 0.0)
        {
            float f18 = (CB2[3].x * 5.0) - 1.0;
            f5 = f3 + f17;
            f4 = f2 + (textureCubeLod(envMapTexture, vec4(f16, f18).xyz, f18).xyz * f17);
            continue;
        }
        else
        {
            f5 = f3;
            f4 = f2;
            continue;
        }
        continue;
    }
    gl_FragData[0] = vec4(f2 / vec3(f3), 0.0);
}

//$$envMapTexture=s0
