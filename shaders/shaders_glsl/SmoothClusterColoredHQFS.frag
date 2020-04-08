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
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
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
    vec4 f8 = ((texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3)).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = VARYING9.x * f8.x;
    float f11 = f9.x;
    float f12 = f9.y;
    float f13 = (VARYING9.y * f11) - (VARYING9.z * f12);
    float f14 = (VARYING9.z * f11) + (VARYING9.y * f12);
    float f15 = f10 - f14;
    vec3 f16 = vec4(vec3(f15, f10, f15) + (vec3(f13, f14, f13) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f17 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    vec3 f18 = normalize(VARYING6);
    vec4 f19 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING4.yzx - (VARYING4.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture3D(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture3D(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec4 f25 = texture2D(ShadowMapTexture, VARYING5.xy);
    float f26 = (1.0 - ((step(f25.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f25.y)) * f24.y;
    float f27 = f19.y;
    vec3 f28 = -CB0[11].xyz;
    vec3 f29 = normalize(f28 + normalize(VARYING7.xyz));
    float f30 = dot(f18, f28);
    float f31 = clamp(f30, 0.0, 1.0);
    float f32 = f27 * f27;
    float f33 = max(0.001000000047497451305389404296875, dot(f18, f29));
    float f34 = dot(f28, f29);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (vec3(0.039999999105930328369140625) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    vec3 f41 = ((((((((vec3(1.0) - (f38 * (CB0[26].w * f17))) * CB0[10].xyz) * f31) + (CB0[12].xyz * clamp(-f30, 0.0, 1.0))) * f26) + min((f23.xyz * (f23.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f24.x)), vec3(CB0[16].w))) + vec3((f19.z * 2.0) * f17)) * (f16 * f16).xyz) + (((((f38 * (((f39 + (f39 * f39)) / (((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * f31)) * CB0[10].xyz) * f26) * f17) * VARYING0.w);
    vec4 f42 = vec4(f41.x, f41.y, f41.z, vec4(0.0).w);
    f42.w = 1.0;
    vec3 f43 = mix(CB0[14].xyz, sqrt(clamp(f42.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f43.x, f43.y, f43.z, f42.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
