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

struct AdvancedUIShadingParams
{
    vec4 UvDesc;
    vec4 RcDesc;
};

uniform vec4 CB0[47];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) - CB3[0].y, (VARYING0.y * CB3[0].z) - CB3[0].w)) - CB3[1].xy;
    vec4 f5 = f3;
    f5.w = f3.w * clamp(CB3[1].z - (length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0)), 0.0, 1.0);
    float f6 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture(LightGridSkylightTexture, f7), vec4(1.0), f8);
    vec4 f11 = texture(ShadowMapTexture, VARYING4.xy);
    vec3 f12 = (f5.xyz * f5.xyz).xyz;
    vec3 f13 = sqrt(clamp(mix(f12, (min((f9.xyz * (f9.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f10.x)), vec3(CB0[16].w)) + (VARYING2 * ((1.0 - ((step(f11.x, VARYING4.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f11.y)) * f10.y))) * f12, vec3(CB2[0].z)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f13.x, f13.y, f13.z, f5.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
