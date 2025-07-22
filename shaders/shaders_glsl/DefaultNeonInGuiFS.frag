#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
varying vec4 VARYING2;
varying vec4 VARYING4;

void main()
{
    vec4 f0 = vec4(0.0);
    f0.x = VARYING2.x;
    vec4 f1 = f0;
    f1.y = VARYING2.y;
    vec4 f2 = f1;
    f2.z = VARYING2.z;
    vec3 f3 = pow(f2.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0;
    vec4 f4 = f2;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f8 = mix(CB0[19].xyz, f6.xyz, vec3(f7));
    vec4 f9 = f6;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec3 f12 = sqrt(clamp(f11.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f13 = f11;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    float f16 = clamp(f7, 0.0, 1.0) * VARYING2.w;
    vec4 f17 = f15;
    f17.w = 1.0 - f16;
    vec4 f18 = f17;
    f18.w = f16;
    gl_FragData[0] = f18;
}

