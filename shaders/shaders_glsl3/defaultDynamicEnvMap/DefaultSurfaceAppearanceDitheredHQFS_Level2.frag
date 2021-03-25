#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    vec4 f4 = texture(Tc2DiffuseMapTexture, VARYING1);
    vec4 f5 = mix(f3, f4, vec4(f4.w));
    float f6 = f5.w;
    float f7 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f6) < (f7 * CB0[47].z))
    {
        discard;
    }
    vec4 f8 = vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w);
    vec4 f9 = vec4(f5.xyz, VARYING2.w * f6);
    bvec4 f10 = bvec4(CB3[0].x != 0.0);
    vec4 f11 = vec4(f10.x ? f8.x : f9.x, f10.y ? f8.y : f9.y, f10.z ? f8.z : f9.z, f10.w ? f8.w : f9.w);
    vec4 f12 = texture(NormalMapTexture, VARYING1);
    vec2 f13 = f12.wy * 2.0;
    vec2 f14 = f13 - vec2(1.0);
    float f15 = sqrt(clamp(1.0 + dot(vec2(1.0) - f13, f14), 0.0, 1.0));
    vec2 f16 = vec3(f14, f15).xy * f2;
    vec4 f17 = texture(SpecularMapTexture, VARYING1);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f16.x) + ((cross(f20, f19) * VARYING6.w) * f16.y)) + (f20 * f15));
    vec3 f22 = f11.xyz;
    vec3 f23 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    float f31 = f30.x;
    vec4 f32 = texture(ShadowMapTexture, f23.xy);
    float f33 = f23.z;
    vec3 f34 = (f22 * f22).xyz;
    float f35 = CB0[26].w * f2;
    float f36 = max(f17.y, 0.04500000178813934326171875);
    vec3 f37 = reflect(-f1, f21);
    float f38 = f36 * 5.0;
    vec3 f39 = vec4(f37, f38).xyz;
    vec3 f40 = textureLod(PrefilteredEnvIndoorTexture, f39, f38).xyz;
    vec3 f41;
    if (CB0[27].w == 0.0)
    {
        f41 = f40;
    }
    else
    {
        f41 = mix(f40, textureLod(PrefilteredEnvBlendTargetTexture, f39, f38).xyz, vec3(CB0[27].w));
    }
    vec4 f42 = texture(PrecomputedBRDFTexture, vec2(f36, max(9.9999997473787516355514526367188e-05, dot(f21, f1))));
    float f43 = f17.x * f35;
    vec3 f44 = mix(vec3(0.039999999105930328369140625), f34, vec3(f43));
    vec3 f45 = -CB0[11].xyz;
    float f46 = dot(f21, f45) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[24].z + (CB0[24].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f30.y);
    vec3 f47 = normalize(f45 + f1);
    float f48 = clamp(f46, 0.0, 1.0);
    float f49 = f36 * f36;
    float f50 = max(0.001000000047497451305389404296875, dot(f21, f47));
    float f51 = dot(f45, f47);
    float f52 = 1.0 - f51;
    float f53 = f52 * f52;
    float f54 = (f53 * f53) * f52;
    vec3 f55 = vec3(f54) + (f44 * (1.0 - f54));
    float f56 = f49 * f49;
    float f57 = (((f50 * f56) - f50) * f50) + 1.0;
    float f58 = 1.0 - f43;
    float f59 = f35 * f58;
    vec3 f60 = vec3(f58);
    float f61 = f42.x;
    float f62 = f42.y;
    vec3 f63 = ((f44 * f61) + vec3(f62)) / vec3(f61 + f62);
    vec3 f64 = f21 * f21;
    bvec3 f65 = lessThan(f21, vec3(0.0));
    vec3 f66 = vec3(f65.x ? f64.x : vec3(0.0).x, f65.y ? f64.y : vec3(0.0).y, f65.z ? f64.z : vec3(0.0).z);
    vec3 f67 = f64 - f66;
    float f68 = f67.x;
    float f69 = f67.y;
    float f70 = f67.z;
    float f71 = f66.x;
    float f72 = f66.y;
    float f73 = f66.z;
    vec3 f74 = ((((((((f60 - (f55 * f59)) * CB0[10].xyz) * f48) + (CB0[12].xyz * (f58 * clamp(-f46, 0.0, 1.0)))) + ((f29.xyz * (f29.w * 120.0)).xyz * 1.0)) + ((f60 - (f63 * f59)) * (((((((CB0[35].xyz * f68) + (CB0[37].xyz * f69)) + (CB0[39].xyz * f70)) + (CB0[36].xyz * f71)) + (CB0[38].xyz * f72)) + (CB0[40].xyz * f73)) + (((((((CB0[29].xyz * f68) + (CB0[31].xyz * f69)) + (CB0[33].xyz * f70)) + (CB0[30].xyz * f71)) + (CB0[32].xyz * f72)) + (CB0[34].xyz * f73)) * f31)))) + ((CB0[27].xyz + (CB0[28].xyz * f31)) * 1.0)) * f34) + (((f55 * (((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25))) * f48)) * CB0[10].xyz) + ((mix(f41, textureLod(PrefilteredEnvTexture, f39, f38).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f37.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f31)) * f63) * f35));
    float f75 = f11.w;
    vec4 f76 = vec4(f74.x, f74.y, f74.z, vec4(0.0).w);
    f76.w = f75;
    float f77 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f78 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f77) * 5.0).xyz;
    bvec3 f79 = bvec3(CB0[13].w != 0.0);
    vec3 f80 = sqrt(clamp(mix(vec3(f79.x ? CB0[14].xyz.x : f78.x, f79.y ? CB0[14].xyz.y : f78.y, f79.z ? CB0[14].xyz.z : f78.z), f76.xyz, vec3(f77)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f7));
    vec4 f81 = vec4(f80.x, f80.y, f80.z, f76.w);
    f81.w = f75;
    _entryPointOutput = f81;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
