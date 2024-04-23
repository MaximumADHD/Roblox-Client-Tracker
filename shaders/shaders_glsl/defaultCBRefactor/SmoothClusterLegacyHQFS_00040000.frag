#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCExtraData.h>
#include <SCLayerData.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform vec4 CB5[189];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING8;
varying vec3 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xy.xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xy.xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = f0.zw;
    vec2 f7 = f2.zw;
    vec4 f8 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7));
    vec4 f11 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    vec3 f12 = (((mix(vec3(1.0), CB5[int(VARYING9.x + 0.5) * 3 + 2].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB5[int(VARYING9.y + 0.5) * 3 + 2].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB5[int(VARYING9.z + 0.5) * 3 + 2].xyz, vec3(f11.w)) * f11.xyz) * VARYING0.z);
    vec3 f13 = f12 * f12;
    float f14 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f15 = normalize(VARYING6);
    float f16 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    float f17 = f8.x;
    vec3 f18 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING4.yzx - (VARYING4.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec4 f24 = texture2D(ShadowMapTexture, f18.xy);
    float f25 = f18.z;
    vec3 f26 = -CB0[16].xyz;
    float f27 = dot(f15, f26) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[29].z + (CB0[29].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f23.y);
    vec3 f28 = normalize(normalize(VARYING8) + f26);
    float f29 = clamp(f27, 0.0, 1.0);
    float f30 = f16 * f16;
    float f31 = max(0.001000000047497451305389404296875, dot(f15, f28));
    float f32 = dot(f26, f28);
    float f33 = 1.0 - f32;
    float f34 = f33 * f33;
    float f35 = (f34 * f34) * f33;
    vec3 f36 = vec3(f35) + (mix(vec3(0.039999999105930328369140625), f13, vec3(f17)) * (1.0 - f35));
    float f37 = f30 * f30;
    float f38 = (((f31 * f37) - f31) * f31) + 1.0;
    float f39 = 1.0 - f17;
    vec3 f40 = (((((((vec3(f39) - (f36 * ((CB0[31].w * f14) * f39))) * CB0[15].xyz) * f29) + (CB0[17].xyz * (f39 * clamp(-f27, 0.0, 1.0)))) + (min((f22.xyz * (f22.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f23.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f8.z * 2.0) * f14)) * f13) + ((((f36 * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f32 * 3.0) + 0.5)) * ((f31 * 0.75) + 0.25))) * f29)) * CB0[15].xyz) * 1.0) * (f14 * VARYING0.w));
    vec4 f41 = vec4(0.0);
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    vec4 f44 = f43;
    f44.w = 1.0;
    vec3 f45 = mix(CB0[19].xyz, f44.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f46 = f44;
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    vec4 f48 = f47;
    f48.z = f45.z;
    vec3 f49 = sqrt(clamp(f48.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f50 = f48;
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    gl_FragData[0] = f52;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
