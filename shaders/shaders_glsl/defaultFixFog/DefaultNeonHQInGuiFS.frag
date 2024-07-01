#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
varying vec4 VARYING1;
varying vec4 VARYING3;

void main()
{
    float f0 = length(VARYING3.xyz);
    vec4 f1 = vec4(0.0);
    f1.x = VARYING1.x;
    vec4 f2 = f1;
    f2.y = VARYING1.y;
    vec4 f3 = f2;
    f3.z = VARYING1.z;
    vec3 f4 = pow(f3.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0;
    vec4 f5 = f3;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f9 = -(VARYING3.xyz / vec3(f0));
    vec3 f10 = f9 * f9;
    bvec3 f11 = lessThan(f9, vec3(0.0));
    vec3 f12 = vec3(f11.x ? f10.x : vec3(0.0).x, f11.y ? f10.y : vec3(0.0).y, f11.z ? f10.z : vec3(0.0).z);
    vec3 f13 = f10 - f12;
    vec3 f14 = (((((CB0[34].xyz * f13.x) + (CB0[36].xyz * f13.y)) + (CB0[38].xyz * f13.z)) + (CB0[35].xyz * f12.x)) + (CB0[37].xyz * f12.y)) + (CB0[39].xyz * f12.z);
    bvec3 f15 = bvec3(!(CB0[18].w == 0.0));
    vec3 f16 = mix(vec3(f15.x ? CB0[19].xyz.x : f14.x, f15.y ? CB0[19].xyz.y : f14.y, f15.z ? CB0[19].xyz.z : f14.z), f7.xyz, vec3(f8));
    vec4 f17 = f7;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec3 f20 = sqrt(clamp(f19.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f21 = f19;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = clamp(f8, 0.0, 1.0) * VARYING1.w;
    vec4 f25 = f23;
    f25.w = 1.0 - f24;
    vec4 f26 = f25;
    f26.w = f24;
    gl_FragData[0] = f26;
}

