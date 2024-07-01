#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f2 = f0.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f0;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = length(VARYING3.xyz);
    vec3 f8 = VARYING3.xyz / vec3(f7);
    float f9 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f10 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    float f11 = VARYING5.w * f9;
    vec3 f12 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f13 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING2.yzx - (VARYING2.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture3D(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture3D(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec4 f18 = texture2D(ShadowMapTexture, f12.xy);
    float f19 = f12.z;
    vec3 f20 = -CB0[16].xyz;
    float f21 = dot(f1, f20) * ((1.0 - ((step(f18.x, f19) * clamp(CB0[29].z + (CB0[29].w * abs(f19 - 0.5)), 0.0, 1.0)) * f18.y)) * f17.y);
    vec3 f22 = normalize(f8 + f20);
    float f23 = clamp(f21, 0.0, 1.0);
    float f24 = f10 * f10;
    float f25 = max(0.001000000047497451305389404296875, dot(f1, f22));
    float f26 = dot(f20, f22);
    float f27 = 1.0 - f26;
    float f28 = f27 * f27;
    float f29 = (f28 * f28) * f27;
    vec3 f30 = vec3(f29) + (mix(vec3(0.039999999105930328369140625), f6.xyz, vec3(f11)) * (1.0 - f29));
    float f31 = f24 * f24;
    float f32 = (((f25 * f31) - f25) * f25) + 1.0;
    float f33 = 1.0 - f11;
    vec3 f34 = ((((((vec3(f33) - (f30 * (f9 * f33))) * CB0[15].xyz) * f23) + (CB0[17].xyz * (f33 * clamp(-f21, 0.0, 1.0)))) + (min((f16.xyz * (f16.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f17.x)), vec3(CB0[21].w)) * 1.0)) * f6.xyz) + (((f30 * (((f31 + (f31 * f31)) / (((f32 * f32) * ((f26 * 3.0) + 0.5)) * ((f25 * 0.75) + 0.25))) * f23)) * CB0[15].xyz) * 1.0);
    vec4 f35 = vec4(0.0);
    f35.x = f34.x;
    vec4 f36 = f35;
    f36.y = f34.y;
    vec4 f37 = f36;
    f37.z = f34.z;
    float f38 = f0.w;
    vec4 f39 = f37;
    f39.w = f38;
    vec3 f40 = -f8;
    vec3 f41 = f40 * f40;
    bvec3 f42 = lessThan(f40, vec3(0.0));
    vec3 f43 = vec3(f42.x ? f41.x : vec3(0.0).x, f42.y ? f41.y : vec3(0.0).y, f42.z ? f41.z : vec3(0.0).z);
    vec3 f44 = f41 - f43;
    vec3 f45 = (((((CB0[34].xyz * f44.x) + (CB0[36].xyz * f44.y)) + (CB0[38].xyz * f44.z)) + (CB0[35].xyz * f43.x)) + (CB0[37].xyz * f43.y)) + (CB0[39].xyz * f43.z);
    bvec3 f46 = bvec3(!(CB0[18].w == 0.0));
    vec3 f47 = mix(vec3(f46.x ? CB0[19].xyz.x : f45.x, f46.y ? CB0[19].xyz.y : f45.y, f46.z ? CB0[19].xyz.z : f45.z), f39.xyz, vec3(clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f48 = f39;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    vec3 f51 = sqrt(clamp(f50.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f52 = f50;
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    vec4 f55 = f54;
    f55.w = f38;
    gl_FragData[0] = f55;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
