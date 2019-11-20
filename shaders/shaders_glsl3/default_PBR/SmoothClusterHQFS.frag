#version 150

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
    vec3 Exposure;
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
    float debugFlagsShadows;
};

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = f2.x;
    float f5 = f4 - f3.y;
    vec3 f6 = vec4(vec3(f5, f4, f5) + (vec3(f3.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f7 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    vec3 f8 = normalize(VARYING6);
    vec4 f9 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    float f10 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING4.yzx - (VARYING4.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture(LightGridSkylightTexture, f11), vec4(1.0), f12);
    vec4 f15 = texture(ShadowMapTexture, VARYING5.xy);
    float f16 = (1.0 - ((step(f15.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f15.y)) * f14.y;
    float f17 = f9.y;
    vec3 f18 = -CB0[11].xyz;
    vec3 f19 = normalize(f18 + normalize(VARYING7.xyz));
    float f20 = dot(f8, f18);
    float f21 = clamp(f20, 0.0, 1.0);
    float f22 = f17 * f17;
    float f23 = max(0.001000000047497451305389404296875, dot(f8, f19));
    float f24 = dot(f18, f19);
    float f25 = 1.0 - f24;
    float f26 = f25 * f25;
    float f27 = (f26 * f26) * f25;
    vec3 f28 = vec3(f27) + (vec3(0.039999999105930328369140625) * (1.0 - f27));
    float f29 = f22 * f22;
    float f30 = (((f23 * f29) - f23) * f23) + 1.0;
    vec3 f31 = (((((((((vec3(1.0) - (f28 * (CB0[26].w * f7))) * 1.0) * CB0[10].xyz) * f21) + ((CB0[12].xyz * 1.0) * clamp(-f20, 0.0, 1.0))) * f16) + min((f13.xyz * (f13.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f14.x)), vec3(CB0[16].w))) + vec3((f9.z * 2.0) * f7)) * (f6 * f6).xyz) + (((((f28 * ((f29 + (f29 * f29)) / (((f30 * f30) * ((f24 * 3.0) + 0.5)) * ((f23 * 0.75) + 0.25)))) * CB0[10].xyz) * f21) * f16) * f7);
    vec4 f32 = vec4(f31.x, f31.y, f31.z, vec4(0.0).w);
    f32.w = 1.0;
    vec3 f33 = mix(CB0[14].xyz, sqrt(clamp(f32.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f33.x, f33.y, f33.z, f32.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
