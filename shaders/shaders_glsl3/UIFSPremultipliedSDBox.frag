#version 150

#extension GL_ARB_shading_language_include : require
#include <AdvancedUIShadingParams.h>
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    float f4 = f0.w;
    vec3 f5 = f0.xyz / vec3(f4);
    bvec3 f6 = bvec3(f4 == 0.0);
    vec4 f7 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
    bvec4 f8 = bvec4(CB2[0].y > 1.5);
    vec4 f9 = VARYING1 * vec4(f8.x ? f7.x : f3.x, f8.y ? f7.y : f3.y, f8.z ? f7.z : f3.z, f8.w ? f7.w : f3.w);
    vec2 f10 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f11 = length(max(f10, vec2(0.0))) + min(max(f10.x, f10.y), 0.0);
    float f12 = (f9.w * clamp(CB3[1].z - f11, 0.0, 1.0)) * clamp(f11 - CB3[1].w, 0.0, 1.0);
    vec4 f13 = f9;
    f13.w = f12;
    _entryPointOutput = vec4(f13.xyz * f12, f12);
}

//$$DiffuseMapTexture=s0
