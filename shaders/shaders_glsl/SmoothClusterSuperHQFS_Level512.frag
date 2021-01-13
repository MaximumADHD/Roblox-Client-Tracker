#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB5[74];
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
varying vec4 VARYING8;
varying vec3 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = dFdx(f5);
    vec2 f7 = dFdy(f5);
    vec4 f8 = texture2DGradARB(SpecularMapTexture, f4, f6, f7);
    vec2 f9 = f0.zw;
    vec2 f10 = f2.zw;
    vec2 f11 = dFdx(f10);
    vec2 f12 = dFdy(f10);
    vec4 f13 = texture2DGradARB(SpecularMapTexture, f9, f11, f12);
    vec2 f14 = dFdx(f3);
    vec2 f15 = dFdy(f3);
    vec4 f16 = texture2DGradARB(SpecularMapTexture, f1, f14, f15);
    vec3 f17;
    if (VARYING8.w < 1.0)
    {
        ivec3 f18 = ivec3(VARYING8.xyz + vec3(0.5));
        int f19 = f18.x;
        int f20 = f18.y;
        int f21 = f18.z;
        float f22 = dot(VARYING0.xyz, vec3(CB5[f19 * 1 + 0].z, CB5[f20 * 1 + 0].z, CB5[f21 * 1 + 0].z));
        float f23 = f8.w;
        float f24 = f13.w;
        float f25 = f16.w;
        vec3 f26 = vec3(f23, f24, f25);
        f26.x = clamp((f23 * CB5[f19 * 1 + 0].x) + CB5[f19 * 1 + 0].y, 0.0, 1.0);
        vec3 f27 = f26;
        f27.y = clamp((f24 * CB5[f20 * 1 + 0].x) + CB5[f20 * 1 + 0].y, 0.0, 1.0);
        vec3 f28 = f27;
        f28.z = clamp((f25 * CB5[f21 * 1 + 0].x) + CB5[f21 * 1 + 0].y, 0.0, 1.0);
        vec3 f29 = VARYING0.xyz * f28;
        float f30 = 1.0 / f22;
        float f31 = 0.5 * f22;
        float f32 = f29.x;
        float f33 = f29.y;
        float f34 = f29.z;
        float f35 = clamp(((f32 - max(f33, f34)) + f31) * f30, 0.0, 1.0);
        float f36 = clamp(((f33 - max(f32, f34)) + f31) * f30, 0.0, 1.0);
        float f37 = clamp(((f34 - max(f32, f33)) + f31) * f30, 0.0, 1.0);
        vec2 f38 = dFdx(VARYING1.xy);
        vec2 f39 = dFdy(VARYING1.xy);
        f17 = mix(vec3(f35, f36, f37) / vec3((f35 + f36) + f37), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f38, f38), dot(f39, f39))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f17 = VARYING0.xyz;
    }
    vec4 f40 = ((f8 * f17.x) + (f13 * f17.y)) + (f16 * f17.z);
    vec4 f41 = ((texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5)).yxzw * f17.x) + (texture2DGradARB(AlbedoMapTexture, f9, dFdx(f10), dFdy(f10)).yxzw * f17.y)) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3)).yxzw * f17.z);
    vec2 f42 = f41.yz - vec2(0.5);
    float f43 = f41.x;
    float f44 = f43 - f42.y;
    vec3 f45 = vec4(vec3(f44, f43, f44) + (vec3(f42.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f46 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f47 = -VARYING6.x;
    vec2 f48 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * f17.x) + (texture2DGradARB(NormalMapTexture, f9, dFdx(f10), dFdy(f10)) * f17.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * f17.z)).wy * 2.0;
    vec2 f49 = f48 - vec2(1.0);
    vec3 f50 = normalize(((vec3(f49, sqrt(clamp(1.0 + dot(vec2(1.0) - f48, f49), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f17, f17))) + vec3(0.0, 0.0, 1.0));
    vec3 f51 = vec3(dot(VARYING7, f17));
    vec3 f52 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f47), vec3(VARYING6.y, f47, 0.0), f51) * f50.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f51) * f50.y)) + (VARYING6 * f50.z)), 0.0).xyz;
    vec3 f53 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f54 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f55 = VARYING4.yzx - (VARYING4.yzx * f54);
    vec4 f56 = vec4(clamp(f54, 0.0, 1.0));
    vec4 f57 = mix(texture3D(LightMapTexture, f55), vec4(0.0), f56);
    vec4 f58 = mix(texture3D(LightGridSkylightTexture, f55), vec4(1.0), f56);
    vec4 f59 = texture2D(ShadowMapTexture, f53.xy);
    float f60 = f53.z;
    float f61 = f40.y;
    vec3 f62 = -CB0[11].xyz;
    float f63 = dot(f52, f62) * ((1.0 - ((step(f59.x, f60) * clamp(CB0[24].z + (CB0[24].w * abs(f60 - 0.5)), 0.0, 1.0)) * f59.y)) * f58.y);
    vec3 f64 = normalize(f62 + normalize(VARYING9));
    float f65 = clamp(f63, 0.0, 1.0);
    float f66 = f61 * f61;
    float f67 = max(0.001000000047497451305389404296875, dot(f52, f64));
    float f68 = dot(f62, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (vec3(0.039999999105930328369140625) * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    vec3 f75 = (((((((vec3(1.0) - (f72 * (CB0[26].w * f46))) * CB0[10].xyz) * f65) + (CB0[12].xyz * clamp(-f63, 0.0, 1.0))) + (min((f57.xyz * (f57.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f58.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f40.z * 2.0) * f46)) * (f45 * f45).xyz) + ((((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[10].xyz) * f46) * VARYING0.w);
    vec4 f76 = vec4(f75.x, f75.y, f75.z, vec4(0.0).w);
    f76.w = 1.0;
    vec3 f77 = sqrt(clamp(mix(CB0[14].xyz, f76.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f77.x, f77.y, f77.z, f76.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
