#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdornParams.h>
uniform vec4 CB0[57];
uniform vec4 CB1[6];
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;

void main()
{
    vec2 f0 = (VARYING3 / vec4(VARYING3.w)).xy;
    vec2 f1 = (VARYING2 / vec4(VARYING2.w)).xy;
    vec2 f2 = normalize(f0 - f1);
    vec2 f3 = (VARYING0 / vec4(VARYING0.w)).xy;
    vec2 f4 = f3 - f1;
    if ((dot(f2, f4) < 0.0) && (dot(f2, (-f3) + f0) < 0.0))
    {
        discard;
    }
    vec4 f5 = vec4(1.0);
    f5.w = clamp(((CB1[5].w * 0.5) + 0.5) - ((abs(dot(vec2(f2.y, -f2.x), f4)) * 0.5) * CB1[5].y), 0.0, 1.0);
    vec4 f6 = f5 * CB1[4];
    float f7 = pow(clamp(1.0 - f6.w, 0.0, 1.0), 0.4545454680919647216796875);
    vec4 f8 = f6;
    f8.w = f7;
    vec4 f9 = f8;
    f9.w = 1.0 - f7;
    vec3 f10 = f9.xyz * f9.xyz;
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec3 f14 = -VARYING1;
    vec3 f15 = f14 * f14;
    bvec3 f16 = lessThan(f14, vec3(0.0));
    vec3 f17 = vec3(f16.x ? f15.x : vec3(0.0).x, f16.y ? f15.y : vec3(0.0).y, f16.z ? f15.z : vec3(0.0).z);
    vec3 f18 = f15 - f17;
    vec3 f19 = (((((CB0[34].xyz * f18.x) + (CB0[36].xyz * f18.y)) + (CB0[38].xyz * f18.z)) + (CB0[35].xyz * f17.x)) + (CB0[37].xyz * f17.y)) + (CB0[39].xyz * f17.z);
    bvec3 f20 = bvec3(!(CB0[18].w == 0.0));
    vec3 f21 = mix(vec3(f20.x ? CB0[19].xyz.x : f19.x, f20.y ? CB0[19].xyz.y : f19.y, f20.z ? CB0[19].xyz.z : f19.z), f13.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f22 = f13;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec3 f25 = sqrt(clamp(f24.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f26 = f24;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    gl_FragData[0] = f28;
}

