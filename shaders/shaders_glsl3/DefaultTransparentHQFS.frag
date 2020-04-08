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

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 f1 = f0.xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec3 f7 = (f5.xyz * (f5.w * 120.0)).xyz;
    float f8 = f6.x;
    vec4 f9 = texture(ShadowMapTexture, VARYING6.xy);
    float f10 = (1.0 - ((step(f9.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f9.y)) * f6.y;
    vec3 f11 = normalize(VARYING4.xyz);
    vec3 f12 = (f1 * f1).xyz;
    float f13 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f14 = normalize(VARYING5.xyz);
    float f15 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f16 = reflect(-f11, f14);
    float f17 = f15 * 5.0;
    vec3 f18 = vec4(f16, f17).xyz;
    vec4 f19 = texture(PrecomputedBRDFTexture, vec2(f15, max(9.9999997473787516355514526367188e-05, dot(f14, f11))));
    float f20 = VARYING6.w * f13;
    vec3 f21 = mix(vec3(0.039999999105930328369140625), f12, vec3(f20));
    vec3 f22 = -CB0[11].xyz;
    vec3 f23 = normalize(f22 + f11);
    float f24 = dot(f14, f22);
    float f25 = clamp(f24, 0.0, 1.0);
    float f26 = f15 * f15;
    float f27 = max(0.001000000047497451305389404296875, dot(f14, f23));
    float f28 = dot(f22, f23);
    float f29 = 1.0 - f28;
    float f30 = f29 * f29;
    float f31 = (f30 * f30) * f29;
    vec3 f32 = vec3(f31) + (f21 * (1.0 - f31));
    float f33 = f26 * f26;
    float f34 = (((f27 * f33) - f27) * f27) + 1.0;
    float f35 = 1.0 - f20;
    float f36 = f13 * f35;
    vec3 f37 = vec3(f35);
    float f38 = f19.x;
    float f39 = f19.y;
    vec3 f40 = ((f21 * f38) + vec3(f39)) / vec3(f38 + f39);
    vec3 f41 = f37 - (f40 * f36);
    vec3 f42 = f14 * f14;
    bvec3 f43 = lessThan(f14, vec3(0.0));
    vec3 f44 = vec3(f43.x ? f42.x : vec3(0.0).x, f43.y ? f42.y : vec3(0.0).y, f43.z ? f42.z : vec3(0.0).z);
    vec3 f45 = f42 - f44;
    float f46 = f45.x;
    float f47 = f45.y;
    float f48 = f45.z;
    float f49 = f44.x;
    float f50 = f44.y;
    float f51 = f44.z;
    vec3 f52 = (mix(textureLod(PrefilteredEnvIndoorTexture, f18, f17).xyz * f7, textureLod(PrefilteredEnvTexture, f18, f17).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f16.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f8)) * f40) * f13;
    vec3 f53 = (((((((((f37 - (f32 * f36)) * CB0[10].xyz) * f25) + (CB0[12].xyz * (f35 * clamp(-f24, 0.0, 1.0)))) * f10) + (f41 * (((((((CB0[35].xyz * f46) + (CB0[37].xyz * f47)) + (CB0[39].xyz * f48)) + (CB0[36].xyz * f49)) + (CB0[38].xyz * f50)) + (CB0[40].xyz * f51)) + (((((((CB0[29].xyz * f46) + (CB0[31].xyz * f47)) + (CB0[33].xyz * f48)) + (CB0[30].xyz * f49)) + (CB0[32].xyz * f50)) + (CB0[34].xyz * f51)) * f8)))) + (CB0[27].xyz + (CB0[28].xyz * f8))) * f12) + ((((f32 * (((f33 + (f33 * f33)) / (((f34 * f34) * ((f28 * 3.0) + 0.5)) * ((f27 * 0.75) + 0.25))) * f25)) * CB0[10].xyz) * f10) + f52)) + (f7 * mix(f12, f52 * (1.0 / (max(max(f52.x, f52.y), f52.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f41) * (f13 * (1.0 - f8))));
    float f54 = f0.w;
    vec4 f55 = vec4(f53.x, f53.y, f53.z, vec4(0.0).w);
    f55.w = f54;
    vec3 f56 = mix(CB0[14].xyz, (sqrt(clamp(f55.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    vec4 f57 = vec4(f56.x, f56.y, f56.z, f55.w);
    f57.w = f54;
    _entryPointOutput = f57;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
