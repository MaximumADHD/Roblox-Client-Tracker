#version 110

uniform vec4 CB2[1];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 _94 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 _100 = vec4(1.0, 1.0, 1.0, _94.x);
    bvec4 _102 = bvec4(CB2[0].y > 0.5);
    gl_FragData[0] = VARYING1 * vec4(_102.x ? _100.x : _94.x, _102.y ? _100.y : _94.y, _102.z ? _100.z : _94.z, _102.w ? _100.w : _94.w);
}

//$$DiffuseMapTexture=s0
