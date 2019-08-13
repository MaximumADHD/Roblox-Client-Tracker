#version 110

uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 _97 = vec4(0.0, 0.0, 0.0, texture2D(DiffuseMapTexture, VARYING0 + vec2(0.0, 0.0625)).x);
    bvec4 _100 = bvec4(texture2D(DiffuseMapTexture, VARYING0).x < 0.5);
    gl_FragData[0] = vec4(_100.x ? _97.x : VARYING1.x, _100.y ? _97.y : VARYING1.y, _100.z ? _97.z : VARYING1.z, _100.w ? _97.w : VARYING1.w);
}

//$$DiffuseMapTexture=s0
