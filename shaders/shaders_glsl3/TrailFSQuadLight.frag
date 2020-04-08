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

struct TrailParams
{
    vec4 Params;
};

uniform vec4 CB0[47];
uniform vec4 CB1[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy / vec2(VARYING0.z));
    vec3 f1 = (f0.xyz * VARYING1.xyz).xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING2 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING2.yzx - (VARYING2.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture(ShadowMapTexture, VARYING3.xy);
    vec3 f8 = (f1 * f1).xyz;
    vec3 f9 = mix(CB0[14].xyz, sqrt(clamp(mix(f8, (min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f6.x)), vec3(CB0[16].w)) + (CB0[10].xyz * ((1.0 - ((step(f7.x, VARYING3.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y))) * f8, vec3(CB1[0].z)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp((CB0[13].x * length(VARYING4)) + CB0[13].y, 0.0, 1.0)));
    float f10 = VARYING1.w * f0.w;
    vec4 f11 = vec4(f9.x, f9.y, f9.z, vec4(0.0).w);
    f11.w = f10;
    vec3 f12 = f11.xyz * f10;
    vec4 f13 = vec4(f12.x, f12.y, f12.z, f11.w);
    f13.w = f10 * CB1[0].y;
    _entryPointOutput = f13;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0
