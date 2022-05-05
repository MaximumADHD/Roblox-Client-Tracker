#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = f0.zw;
    vec2 f7 = f2.zw;
    vec4 f8 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7));
    vec4 f11 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    vec3 f12 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f11.w)) * f11.xyz) * VARYING0.z);
    vec3 f13 = f12 * f12;
    float f14 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f15 = -VARYING6.x;
    vec2 f16 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f17 = f16 - vec2(1.0);
    vec3 f18 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f19 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f15), vec3(VARYING6.y, f15, 0.0), f18) * f17.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f18) * f17.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f16, f17), 0.0, 1.0)))), 0.0).xyz;
    vec3 f20 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING4.yzx - (VARYING4.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture3D(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture3D(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec4 f26 = texture2D(ShadowMapTexture, f20.xy);
    float f27 = f20.z;
    float f28 = f8.y;
    float f29 = f8.x;
    vec3 f30 = -CB0[11].xyz;
    float f31 = (dot(f19, f30) * CB0[9].w) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f25.y);
    vec3 f32 = normalize(f30 + normalize(VARYING8));
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f28 * f28;
    float f35 = max(0.001000000047497451305389404296875, dot(f19, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (mix(vec3(0.039999999105930328369140625), f13, vec3(f29)) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    float f43 = 1.0 - f29;
    vec3 f44 = (((((((vec3(f43) - (f40 * ((CB0[26].w * f14) * f43))) * CB0[10].xyz) * f33) + (CB0[12].xyz * (f43 * clamp(-f31, 0.0, 1.0)))) + (min((f24.xyz * (f24.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f25.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f8.z * 2.0) * f14)) * f13) + (((((f40 * (((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25))) * f33)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f14) * VARYING0.w);
    vec4 f45 = vec4(0.0);
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    vec4 f48 = f47;
    f48.w = 1.0;
    vec3 f49 = mix(CB0[14].xyz, f48.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f50 = f48;
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec3 f53 = sqrt(clamp(f52.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f54 = f52;
    f54.x = f53.x;
    vec4 f55 = f54;
    f55.y = f53.y;
    vec4 f56 = f55;
    f56.z = f53.z;
    gl_FragData[0] = f56;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
