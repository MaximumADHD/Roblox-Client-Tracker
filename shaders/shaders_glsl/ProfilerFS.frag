#version 110

uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 f0 = vec4(0.0, 0.0, 0.0, texture2D(DiffuseMapTexture, VARYING0 + vec2(0.0, 0.0625)).x);
    bvec4 f1 = bvec4(texture2D(DiffuseMapTexture, VARYING0).x < 0.5);
    gl_FragData[0] = vec4(f1.x ? f0.x : VARYING1.x, f1.y ? f0.y : VARYING1.y, f1.z ? f0.z : VARYING1.z, f1.w ? f0.w : VARYING1.w);
}

//$$DiffuseMapTexture=s0
