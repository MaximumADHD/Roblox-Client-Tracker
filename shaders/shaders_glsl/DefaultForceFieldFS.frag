#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying float VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture2D(DiffuseMapTexture, VARYING0);
    float f2 = f1.x;
    float f3 = (f2 > 0.0) ? ((1.0 - clamp(abs(f2 - CB0[19].w) * 13.0, 0.0, 1.0)) * f1.w) : 0.0;
    float f4 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f0))) * 2.0, 0.0, 1.0), 0.0), f3);
    float f5 = VARYING2.w * max(mix(f3, 1.0, f4) * f4, VARYING1);
    vec4 f6 = vec4(VARYING2.xyz * VARYING2.xyz, f5);
    float f7 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f8 = mix(CB0[19].xyz, f6.xyz, vec3(f7));
    float f9 = f7 * f5;
    vec4 f10 = f6;
    f10.x = f8.x;
    vec4 f11 = f10;
    f11.y = f8.y;
    vec4 f12 = f11;
    f12.z = f8.z;
    vec4 f13 = f12;
    f13.w = f9;
    vec3 f14 = sqrt(clamp(f13.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f15 = f13;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec4 f18 = f17;
    f18.w = f9;
    gl_FragData[0] = f18;
}

//$$DiffuseMapTexture=s3
