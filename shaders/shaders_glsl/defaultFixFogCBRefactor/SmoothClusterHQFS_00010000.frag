#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCExtraData.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec2 f0 = (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy;
    vec2 f1 = (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw;
    vec2 f2 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec2 f3 = VARYING1.xy * CB3[0].xy;
    vec2 f4 = VARYING1.zw * CB3[0].xy;
    vec2 f5 = VARYING3.xy * CB3[0].xy;
    vec4 f6 = ((texture2DGradARB(SpecularMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = ((texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5)).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f9.x;
    float f11 = f9.y;
    float f12 = VARYING9.x * f8.x;
    float f13 = (VARYING9.y * f10) - (VARYING9.z * f11);
    float f14 = (VARYING9.z * f10) + (VARYING9.y * f11);
    float f15 = f12 - f14;
    float f16 = f8.w;
    vec3 f17 = vec4(vec3(f15, f12, f15) + (vec3(f13, f14, f13) * vec3(1.0, 1.0, -1.0)), f16).xyz;
    vec3 f18 = mix(f17, f17 * VARYING9.xyz, vec3(VARYING9.w * f16));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f23 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    vec3 f24 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f25 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING4.yzx - (VARYING4.yzx * f25);
    vec4 f27 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f28 = mix(texture3D(LightMapTexture, f26), vec4(0.0), f27);
    vec4 f29 = mix(texture3D(LightGridSkylightTexture, f26), vec4(1.0), f27);
    vec4 f30 = texture2D(ShadowMapTexture, f24.xy);
    float f31 = f24.z;
    vec3 f32 = -CB0[16].xyz;
    float f33 = dot(f7, f32) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[29].z + (CB0[29].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f29.y);
    vec3 f34 = normalize(normalize(VARYING8) + f32);
    float f35 = clamp(f33, 0.0, 1.0);
    float f36 = f23 * f23;
    float f37 = max(0.001000000047497451305389404296875, dot(f7, f34));
    float f38 = dot(f32, f34);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (vec3(0.039999999105930328369140625) * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    vec3 f45 = (((vec3((f6.z * 2.0) * f22) + (min((f28.xyz * (f28.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f29.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(1.0) - (f42 * (CB0[31].w * f22))) * CB0[15].xyz) * f35) + (CB0[17].xyz * clamp(-f33, 0.0, 1.0)))) * (f21.xyz * f21.xyz)) + (((f42 * (((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25))) * f35)) * CB0[15].xyz) * (f22 * VARYING0.w));
    vec4 f46 = vec4(0.0);
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    vec4 f48 = f47;
    f48.z = f45.z;
    vec4 f49 = f48;
    f49.w = 1.0;
    vec3 f50 = normalize(-VARYING8);
    vec3 f51 = f50 * f50;
    bvec3 f52 = lessThan(f50, vec3(0.0));
    vec3 f53 = vec3(f52.x ? f51.x : vec3(0.0).x, f52.y ? f51.y : vec3(0.0).y, f52.z ? f51.z : vec3(0.0).z);
    vec3 f54 = f51 - f53;
    vec3 f55 = (((((CB0[34].xyz * f54.x) + (CB0[36].xyz * f54.y)) + (CB0[38].xyz * f54.z)) + (CB0[35].xyz * f53.x)) + (CB0[37].xyz * f53.y)) + (CB0[39].xyz * f53.z);
    bvec3 f56 = bvec3(!(CB0[18].w == 0.0));
    vec3 f57 = mix(vec3(f56.x ? CB0[19].xyz.x : f55.x, f56.y ? CB0[19].xyz.y : f55.y, f56.z ? CB0[19].xyz.z : f55.z), f49.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f58 = f49;
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec4 f60 = f59;
    f60.z = f57.z;
    vec3 f61 = sqrt(clamp(f60.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f62 = f60;
    f62.x = f61.x;
    vec4 f63 = f62;
    f63.y = f61.y;
    vec4 f64 = f63;
    f64.z = f61.z;
    gl_FragData[0] = f64;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
