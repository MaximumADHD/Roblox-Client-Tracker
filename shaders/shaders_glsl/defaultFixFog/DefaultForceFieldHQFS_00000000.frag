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
    vec3 f8 = -VARYING4.xyz;
    vec3 f9 = f8 * f8;
    bvec3 f10 = lessThan(f8, vec3(0.0));
    vec3 f11 = vec3(f10.x ? f9.x : vec3(0.0).x, f10.y ? f9.y : vec3(0.0).y, f10.z ? f9.z : vec3(0.0).z);
    vec3 f12 = f9 - f11;
    vec3 f13 = (((((CB0[34].xyz * f12.x) + (CB0[36].xyz * f12.y)) + (CB0[38].xyz * f12.z)) + (CB0[35].xyz * f11.x)) + (CB0[37].xyz * f11.y)) + (CB0[39].xyz * f11.z);
    bvec3 f14 = bvec3(!(CB0[18].w == 0.0));
    vec3 f15 = mix(vec3(f14.x ? CB0[19].xyz.x : f13.x, f14.y ? CB0[19].xyz.y : f13.y, f14.z ? CB0[19].xyz.z : f13.z), f6.xyz, vec3(f7));
    float f16 = f7 * f5;
    vec4 f17 = f6;
    f17.x = f15.x;
    vec4 f18 = f17;
    f18.y = f15.y;
    vec4 f19 = f18;
    f19.z = f15.z;
    vec4 f20 = f19;
    f20.w = f16;
    vec3 f21 = sqrt(clamp(f20.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f22 = f20;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = f16;
    gl_FragData[0] = f25;
}

//$$DiffuseMapTexture=s3
