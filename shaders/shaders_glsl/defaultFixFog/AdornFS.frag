#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    vec3 f6 = -VARYING2;
    vec3 f7 = f6 * f6;
    bvec3 f8 = lessThan(f6, vec3(0.0));
    vec3 f9 = vec3(f8.x ? f7.x : vec3(0.0).x, f8.y ? f7.y : vec3(0.0).y, f8.z ? f7.z : vec3(0.0).z);
    vec3 f10 = f7 - f9;
    vec3 f11 = (((((CB0[34].xyz * f10.x) + (CB0[36].xyz * f10.y)) + (CB0[38].xyz * f10.z)) + (CB0[35].xyz * f9.x)) + (CB0[37].xyz * f9.y)) + (CB0[39].xyz * f9.z);
    bvec3 f12 = bvec3(!(CB0[18].w == 0.0));
    vec3 f13 = mix(vec3(f12.x ? CB0[19].xyz.x : f11.x, f12.y ? CB0[19].xyz.y : f11.y, f12.z ? CB0[19].xyz.z : f11.z), f5.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f14 = f5;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    vec3 f17 = sqrt(clamp(f16.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f18 = f16;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    gl_FragData[0] = f20;
}

//$$DiffuseMapTexture=s0
