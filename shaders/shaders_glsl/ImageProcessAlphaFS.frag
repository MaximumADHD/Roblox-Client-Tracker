#version 110

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

uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 _125 = texture2D(Texture0Texture, VARYING0);
    vec3 _127 = _125.xyz;
    gl_FragData[0] = vec4(dot(_127, CB1[1].xyz) + CB1[1].w, dot(_127, CB1[2].xyz) + CB1[2].w, dot(_127, CB1[3].xyz) + CB1[3].w, _125.w);
}

//$$Texture0Texture=s0
