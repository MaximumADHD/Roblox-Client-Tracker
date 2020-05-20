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

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = f0.xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture3D(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture3D(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture2D(ShadowMapTexture, VARYING6.xy);
    float f8 = (1.0 - ((step(f7.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y;
    float f9 = length(VARYING4.xyz);
    vec3 f10 = (f1 * f1).xyz;
    float f11 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f12 = normalize(VARYING5.xyz);
    float f13 = max(VARYING5.w, 0.04500000178813934326171875);
    float f14 = VARYING6.w * f11;
    vec3 f15 = -CB0[11].xyz;
    vec3 f16 = normalize(f15 + (VARYING4.xyz / vec3(f9)));
    float f17 = dot(f12, f15);
    float f18 = clamp(f17, 0.0, 1.0);
    float f19 = f13 * f13;
    float f20 = max(0.001000000047497451305389404296875, dot(f12, f16));
    float f21 = dot(f15, f16);
    float f22 = 1.0 - f21;
    float f23 = f22 * f22;
    float f24 = (f23 * f23) * f22;
    vec3 f25 = vec3(f24) + (mix(vec3(0.039999999105930328369140625), f10, vec3(f14)) * (1.0 - f24));
    float f26 = f19 * f19;
    float f27 = (((f20 * f26) - f20) * f20) + 1.0;
    float f28 = 1.0 - f14;
    vec3 f29 = (((((((vec3(f28) - (f25 * (f11 * f28))) * CB0[10].xyz) * f18) + (CB0[12].xyz * (f28 * clamp(-f17, 0.0, 1.0)))) * f8) + min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f6.x)), vec3(CB0[16].w))) * f10) + (((f25 * (((f26 + (f26 * f26)) / (((f27 * f27) * ((f21 * 3.0) + 0.5)) * ((f20 * 0.75) + 0.25))) * f18)) * CB0[10].xyz) * f8);
    float f30 = f0.w;
    vec4 f31 = vec4(f29.x, f29.y, f29.z, vec4(0.0).w);
    f31.w = f30;
    vec3 f32 = sqrt(clamp(mix(CB0[14].xyz, f31.xyz, vec3(clamp(exp2((CB0[13].z * f9) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f33 = vec4(f32.x, f32.y, f32.z, f31.w);
    f33.w = f30;
    gl_FragData[0] = f33;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
