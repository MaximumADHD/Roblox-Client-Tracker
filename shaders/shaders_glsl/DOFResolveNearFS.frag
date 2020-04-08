#version 110

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

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB0[47];
uniform vec4 CB1[8];
uniform sampler2D blurredTexture;
uniform sampler2D originalTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = vec4(4.0, 4.0, -4.0, 0.0) * CB1[0].zwzw;
    vec2 f1 = f0.xy;
    vec2 f2 = f0.wy;
    vec2 f3 = f0.zy;
    vec4 f4 = ((((((((texture2D(blurredTexture, VARYING0 - f1) + (texture2D(blurredTexture, VARYING0 - f2) * 2.0)) + texture2D(blurredTexture, VARYING0 - f3)) + (texture2D(blurredTexture, VARYING0 + f0.zw) * 2.0)) + (texture2D(blurredTexture, VARYING0) * 4.0)) + (texture2D(blurredTexture, VARYING0 + f0.xw) * 2.0)) + texture2D(blurredTexture, VARYING0 + f3)) + (texture2D(blurredTexture, VARYING0 + f2) * 2.0)) + texture2D(blurredTexture, VARYING0 + f1)) * 0.0625;
    float f5 = clamp(max(1.0, f4.w) * 1.5, 0.0, 1.0);
    vec4 f6 = texture2D(originalTexture, VARYING0);
    vec3 f7 = f6.xyz;
    gl_FragData[0] = vec4(sqrt(clamp(mix(((f7 * f7) * CB0[15].x) * (1.0 + f5), f4.xyz * f5, vec3(f5)) * CB0[15].y, vec3(0.0), vec3(1.0))), f6.w);
}

//$$blurredTexture=s2
//$$originalTexture=s1
