#version 110
#extension GL_ARB_shader_texture_lod : require

struct ParamsIBL
{
    vec4 normalTransformRow0;
    vec4 normalTransformRow1;
    vec4 normalTransformRow2;
    vec4 roughness;
};

uniform vec4 CB5[32];
uniform vec4 CB2[4];
uniform samplerCube envMapTexture;

varying vec3 VARYING1;

void main()
{
    vec3 f0 = normalize(VARYING1);
    vec3 f1;
    float f2;
    f2 = 0.0;
    f1 = vec3(0.0);
    vec3 f3;
    float f4;
    for (int f5 = 0; f5 < 32; f2 = f4, f1 = f3, f5++)
    {
        float f6 = float(f5);
        float f7 = CB2[3].x * CB2[3].x;
        float f8 = sqrt((1.0 - CB5[f5 * 1 + 0].x) / (1.0 + (((f7 * f7) - 1.0) * CB5[f5 * 1 + 0].x)));
        float f9 = sqrt(1.0 - (f8 * f8));
        float f10 = f6 * 0.19634954631328582763671875;
        bvec3 f11 = bvec3(abs(f0.z) < 0.999000012874603271484375);
        vec3 f12 = normalize(cross(vec3(f11.x ? vec3(0.0, 0.0, 1.0).x : vec3(1.0, 0.0, 0.0).x, f11.y ? vec3(0.0, 0.0, 1.0).y : vec3(1.0, 0.0, 0.0).y, f11.z ? vec3(0.0, 0.0, 1.0).z : vec3(1.0, 0.0, 0.0).z), f0));
        vec3 f13 = ((f12 * (f9 * cos(f10))) + (cross(f0, f12) * (f9 * sin(f10)))) + (f0 * f8);
        vec3 f14 = (f13 * (2.0 * dot(f0, f13))) - f0;
        float f15 = clamp(dot(f0, f14), 0.0, 1.0);
        if (f15 > 0.0)
        {
            float f16 = (CB2[3].x * 5.0) - 1.0;
            f4 = f2 + f15;
            f3 = f1 + (textureCubeLod(envMapTexture, vec4(f14, f16).xyz, f16).xyz * f15);
            continue;
        }
        else
        {
            f4 = f2;
            f3 = f1;
            continue;
        }
        continue;
    }
    gl_FragData[0] = vec4(f1 / vec3(f2), 0.0);
}

//$$envMapTexture=s0
