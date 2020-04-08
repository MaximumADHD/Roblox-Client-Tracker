#version 110
#extension GL_ARB_shader_texture_lod : require

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Exposure_DoFDistance;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlags;
};

uniform vec4 CB0[47];
uniform vec4 CB3[1];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
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
    vec4 f6 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec2 f7 = f0.zw;
    vec2 f8 = f2.zw;
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f7, dFdx(f8), dFdy(f8));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    int f11 = int(VARYING9.x + 0.5);
    int f12 = int(VARYING9.y + 0.5);
    int f13 = int(VARYING9.z + 0.5);
    vec2 f14 = f6.xz - vec2(0.5);
    vec2 f15 = f9.xz - vec2(0.5);
    vec2 f16 = f10.xz - vec2(0.5);
    vec3 f17 = vec3(0.0);
    f17.x = CB4[f11 * 1 + 0].x * f6.y;
    float f18 = f14.x;
    float f19 = f14.y;
    vec3 f20 = f17;
    f20.y = (CB4[f11 * 1 + 0].y * f18) - (CB4[f11 * 1 + 0].z * f19);
    vec3 f21 = f20;
    f21.z = (CB4[f11 * 1 + 0].z * f18) + (CB4[f11 * 1 + 0].y * f19);
    vec3 f22 = vec3(0.0);
    f22.x = CB4[f12 * 1 + 0].x * f9.y;
    float f23 = f15.x;
    float f24 = f15.y;
    vec3 f25 = f22;
    f25.y = (CB4[f12 * 1 + 0].y * f23) - (CB4[f12 * 1 + 0].z * f24);
    vec3 f26 = f25;
    f26.z = (CB4[f12 * 1 + 0].z * f23) + (CB4[f12 * 1 + 0].y * f24);
    vec3 f27 = vec3(0.0);
    f27.x = CB4[f13 * 1 + 0].x * f10.y;
    float f28 = f16.x;
    float f29 = f16.y;
    vec3 f30 = f27;
    f30.y = (CB4[f13 * 1 + 0].y * f28) - (CB4[f13 * 1 + 0].z * f29);
    vec3 f31 = f30;
    f31.z = (CB4[f13 * 1 + 0].z * f28) + (CB4[f13 * 1 + 0].y * f29);
    vec4 f32 = ((vec4(f21.x, f21.y, f21.z, f6.w) * VARYING0.x) + (vec4(f26.x, f26.y, f26.z, f9.w) * VARYING0.y)) + (vec4(f31.x, f31.y, f31.z, f10.w) * VARYING0.z);
    float f33 = f32.x;
    float f34 = f33 - f32.z;
    vec3 f35 = vec4(vec3(f34, f33, f34) + (vec3(f32.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f36 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    float f37 = -VARYING6.x;
    vec2 f38 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    vec3 f40 = vec3(dot(VARYING8, VARYING0.xyz));
    vec3 f41 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f37), vec3(VARYING6.y, f37, 0.0), f40) * f39.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f40) * f39.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0)))), 0.0).xyz;
    vec4 f42 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    float f43 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING4.yzx - (VARYING4.yzx * f43);
    vec4 f45 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f46 = mix(texture3D(LightMapTexture, f44), vec4(0.0), f45);
    vec4 f47 = mix(texture3D(LightGridSkylightTexture, f44), vec4(1.0), f45);
    vec4 f48 = texture2D(ShadowMapTexture, VARYING5.xy);
    float f49 = (1.0 - ((step(f48.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f48.y)) * f47.y;
    float f50 = f42.y;
    vec3 f51 = -CB0[11].xyz;
    vec3 f52 = normalize(f51 + normalize(VARYING7.xyz));
    float f53 = dot(f41, f51);
    float f54 = clamp(f53, 0.0, 1.0);
    float f55 = f50 * f50;
    float f56 = max(0.001000000047497451305389404296875, dot(f41, f52));
    float f57 = dot(f51, f52);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (vec3(0.039999999105930328369140625) * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    vec3 f64 = ((((((((vec3(1.0) - (f61 * (CB0[26].w * f36))) * CB0[10].xyz) * f54) + (CB0[12].xyz * clamp(-f53, 0.0, 1.0))) * f49) + min((f46.xyz * (f46.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f47.x)), vec3(CB0[16].w))) + vec3((f42.z * 2.0) * f36)) * (f35 * f35).xyz) + (((((f61 * (((f62 + (f62 * f62)) / (((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25))) * f54)) * CB0[10].xyz) * f49) * f36) * VARYING0.w);
    vec4 f65 = vec4(f64.x, f64.y, f64.z, vec4(0.0).w);
    f65.w = 1.0;
    vec3 f66 = mix(CB0[14].xyz, sqrt(clamp(f65.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f66.x, f66.y, f66.z, f65.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
