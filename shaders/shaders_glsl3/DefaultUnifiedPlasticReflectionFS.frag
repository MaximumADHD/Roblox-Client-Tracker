#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;

in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f1 = VARYING1.xyz * VARYING1.xyz;
    vec4 f2 = VARYING1;
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    float f5 = length(VARYING3.xyz);
    vec3 f6 = VARYING3.xyz / vec3(f5);
    float f7 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f8 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f9 = -f6;
    vec3 f10 = reflect(f9, f0);
    float f11 = (!(VARYING5.w == 0.0)) ? 0.0 : (f8 * 5.0);
    vec3 f12 = vec4(f10, f11).xyz;
    vec3 f13 = textureLod(PrefilteredEnvTexture, f12, f11).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f10.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f14 = textureLod(PrefilteredEnvIndoorTexture, f12, f11).xyz;
    vec3 f15;
    if (CB0[32].w == 0.0)
    {
        f15 = f14;
    }
    else
    {
        f15 = mix(f14, textureLod(PrefilteredEnvBlendTargetTexture, f12, f11).xyz, vec3(CB0[32].w));
    }
    vec4 f16 = texture(PrecomputedBRDFTexture, vec2(f8, max(9.9999997473787516355514526367188e-05, dot(f0, f6))));
    vec3 f17 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f18 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING2.yzx - (VARYING2.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture(LightGridSkylightTexture, f19), vec4(1.0), f20);
    float f23 = f22.x;
    vec4 f24 = texture(ShadowMapTexture, f17.xy);
    float f25 = f17.z;
    vec3 f26 = -CB0[16].xyz;
    float f27 = dot(f0, f26) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[29].z + (CB0[29].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f22.y);
    vec3 f28 = normalize(f6 + f26);
    float f29 = clamp(f27, 0.0, 1.0);
    float f30 = f8 * f8;
    float f31 = max(0.001000000047497451305389404296875, dot(f0, f28));
    float f32 = dot(f26, f28);
    float f33 = 1.0 - f32;
    float f34 = f33 * f33;
    float f35 = (f34 * f34) * f33;
    vec3 f36 = vec3(f35) + (vec3(0.039999999105930328369140625) * (1.0 - f35));
    float f37 = f30 * f30;
    float f38 = (((f31 * f37) - f31) * f31) + 1.0;
    float f39 = f16.x;
    float f40 = f16.y;
    vec3 f41 = ((vec3(0.039999999105930328369140625) * f39) + vec3(f40)) / vec3(f39 + f40);
    vec3 f42 = f0 * f0;
    bvec3 f43 = lessThan(f0, vec3(0.0));
    vec3 f44 = vec3(f43.x ? f42.x : vec3(0.0).x, f43.y ? f42.y : vec3(0.0).y, f43.z ? f42.z : vec3(0.0).z);
    vec3 f45 = f42 - f44;
    float f46 = f45.x;
    float f47 = f45.y;
    float f48 = f45.z;
    float f49 = f44.x;
    float f50 = f44.y;
    float f51 = f44.z;
    vec3 f52 = (((((f21.xyz * (f21.w * 120.0)) + ((((vec3(1.0) - (f36 * f7)) * CB0[15].xyz) * f29) + (CB0[17].xyz * clamp(-f27, 0.0, 1.0)))) + (((vec3(1.0) - (f41 * f7)) * (((((((CB0[40].xyz * f46) + (CB0[42].xyz * f47)) + (CB0[44].xyz * f48)) + (CB0[41].xyz * f49)) + (CB0[43].xyz * f50)) + (CB0[45].xyz * f51)) + (((((((CB0[34].xyz * f46) + (CB0[36].xyz * f47)) + (CB0[38].xyz * f48)) + (CB0[35].xyz * f49)) + (CB0[37].xyz * f50)) + (CB0[39].xyz * f51)) * f23))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f23)) * 1.0)) * mix(f4.xyz, f13, vec3(VARYING5.w))) + ((((f36 * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f32 * 3.0) + 0.5)) * ((f31 * 0.75) + 0.25))) * f29)) * CB0[15].xyz) * 1.0) + ((mix(f15, f13, vec3(f23)) * f41) * f7));
    vec4 f53 = vec4(0.0);
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec4 f56 = f55;
    f56.w = VARYING1.w;
    float f57 = clamp(exp2((CB0[18].z * f5) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f58 = textureLod(PrefilteredEnvTexture, vec4(f9, 0.0).xyz, max(CB0[18].y, f57) * 5.0).xyz;
    bvec3 f59 = bvec3(!(CB0[18].w == 0.0));
    vec3 f60 = mix(vec3(f59.x ? CB0[19].xyz.x : f58.x, f59.y ? CB0[19].xyz.y : f58.y, f59.z ? CB0[19].xyz.z : f58.z), f56.xyz, vec3(f57));
    vec4 f61 = f56;
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    vec3 f64 = sqrt(clamp(f63.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f65 = f63;
    f65.x = f64.x;
    vec4 f66 = f65;
    f66.y = f64.y;
    vec4 f67 = f66;
    f67.z = f64.z;
    vec4 f68 = f67;
    f68.w = VARYING1.w;
    _entryPointOutput = f68;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
