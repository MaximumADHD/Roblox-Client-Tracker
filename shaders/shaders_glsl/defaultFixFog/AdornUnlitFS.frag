#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
varying vec4 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec3 f0 = VARYING0.xyz * VARYING0.xyz;
    vec4 f1 = VARYING0;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    vec3 f4 = -VARYING1;
    vec3 f5 = f4 * f4;
    bvec3 f6 = lessThan(f4, vec3(0.0));
    vec3 f7 = vec3(f6.x ? f5.x : vec3(0.0).x, f6.y ? f5.y : vec3(0.0).y, f6.z ? f5.z : vec3(0.0).z);
    vec3 f8 = f5 - f7;
    vec3 f9 = (((((CB0[34].xyz * f8.x) + (CB0[36].xyz * f8.y)) + (CB0[38].xyz * f8.z)) + (CB0[35].xyz * f7.x)) + (CB0[37].xyz * f7.y)) + (CB0[39].xyz * f7.z);
    bvec3 f10 = bvec3(!(CB0[18].w == 0.0));
    vec3 f11 = mix(vec3(f10.x ? CB0[19].xyz.x : f9.x, f10.y ? CB0[19].xyz.y : f9.y, f10.z ? CB0[19].xyz.z : f9.z), f3.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f12 = f3;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    vec3 f15 = sqrt(clamp(f14.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    gl_FragData[0] = f18;
}

