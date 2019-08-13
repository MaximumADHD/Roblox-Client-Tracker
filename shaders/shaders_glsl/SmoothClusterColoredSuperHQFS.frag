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
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
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
    float debugFlagsShadows;
};

uniform vec4 CB0[32];
uniform vec4 CB3[1];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
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
    vec3 f36 = vec3(CB0[15].x);
    float f37 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float f38 = -VARYING6.x;
    vec2 f39 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f40 = f39 - vec2(1.0);
    vec3 f41 = vec3(dot(VARYING8, VARYING0));
    vec3 f42 = normalize(((mix(vec3(VARYING6.z, 0.0, f38), vec3(VARYING6.y, f38, 0.0), f41) * f40.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f41) * f40.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f39, f40), 0.0, 1.0))));
    vec4 f43 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    vec3 f44 = -CB0[11].xyz;
    float f45 = dot(f42, f44);
    float f46 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f47 = VARYING4.yzx - (VARYING4.yzx * f46);
    vec4 f48 = vec4(clamp(f46, 0.0, 1.0));
    vec4 f49 = mix(texture3D(LightMapTexture, f47), vec4(0.0), f48);
    vec4 f50 = mix(texture3D(LightGridSkylightTexture, f47), vec4(1.0), f48);
    vec4 f51 = texture2D(ShadowMapTexture, VARYING5.xy);
    float f52 = (1.0 - ((step(f51.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f51.y)) * f50.y;
    vec3 f53 = (((min(((f49.xyz * (f49.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f50.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f45, 0.0, 1.0)) + (CB0[12].xyz * max(-f45, 0.0))) * f52)) + vec3((f43.z * 2.0) * f37)) * mix(f35, f35 * f35, f36).xyz) + (CB0[10].xyz * (((((step(0.0, f45) * f43.x) * f37) * CB3[0].z) * f52) * pow(clamp(dot(f42, normalize(f44 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(f43.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 f54 = vec4(f53.x, f53.y, f53.z, vec4(0.0).w);
    f54.w = 1.0;
    vec3 f55 = mix(CB0[14].xyz, mix(f54.xyz, sqrt(clamp(f54.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f36).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f55.x, f55.y, f55.z, f54.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
