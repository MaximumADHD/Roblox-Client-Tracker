#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
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
    vec4 f9 = ((texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3)).yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f10.x;
    float f12 = f10.y;
    float f13 = VARYING9.x * f9.x;
    float f14 = (VARYING9.y * f11) - (VARYING9.z * f12);
    float f15 = (VARYING9.z * f11) + (VARYING9.y * f12);
    float f16 = f13 - f15;
    float f17 = f9.w;
    vec3 f18 = vec4(vec3(f16, f13, f16) + (vec3(f14, f15, f14) * vec3(1.0, 1.0, -1.0)), f17).xyz;
    vec3 f19 = mix(f18, f18 * VARYING9.xyz, vec3(VARYING9.w * f17));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = f22.xyz * f22.xyz;
    float f24 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f25 = normalize(VARYING6);
    vec3 f26 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING4.yzx - (VARYING4.yzx * f27);
    vec4 f29 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f30 = mix(texture3D(LightMapTexture, f28), vec4(0.0), f29);
    vec4 f31 = mix(texture3D(LightGridSkylightTexture, f28), vec4(1.0), f29);
    vec4 f32 = texture2D(ShadowMapTexture, f26.xy);
    float f33 = f26.z;
    float f34 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    float f35 = f8.x;
    vec3 f36 = -CB0[11].xyz;
    float f37 = (dot(f25, f36) * CB0[9].w) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[24].z + (CB0[24].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f31.y);
    vec3 f38 = normalize(normalize(VARYING8) - CB0[11].xyz);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f34 * f34;
    float f41 = max(0.001000000047497451305389404296875, dot(f25, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (mix(vec3(0.039999999105930328369140625), f23, vec3(f35)) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - f35;
    vec3 f50 = (((((((vec3(f49) - (f46 * ((CB0[26].w * f24) * f49))) * CB0[10].xyz) * f39) + (CB0[12].xyz * (f49 * clamp(-f37, 0.0, 1.0)))) + (min((f30.xyz * (f30.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f31.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f8.z * 2.0) * f24)) * f23) + (((((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f24) * VARYING0.w);
    vec4 f51 = vec4(0.0);
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    vec4 f54 = f53;
    f54.w = 1.0;
    vec3 f55 = mix(CB0[14].xyz, f54.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f56 = f54;
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    vec3 f59 = sqrt(clamp(f58.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f60 = f58;
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    gl_FragData[0] = f62;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
