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
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 _271 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 _276 = texture2D(Texture3Texture, VARYING0).xyz;
    vec3 _284 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 _291 = mix(((_271 * _271) * 4.0) + ((_276 * _276) * 4.0), (_284 * _284) * 4.0, vec3(CB1[4].x));
    vec3 _371 = _291 * CB1[5].x;
    vec3 _389 = ((_291 * (_371 + vec3(CB1[5].y))) / ((_291 * (_371 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    gl_FragData[0] = vec4(dot(_389, CB1[1].xyz) + CB1[1].w, dot(_389, CB1[2].xyz) + CB1[2].w, dot(_389, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1
