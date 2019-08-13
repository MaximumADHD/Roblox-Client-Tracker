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
    vec4 _312 = texture2D(Texture0Texture, VARYING0);
    vec3 _313 = _312.xyz;
    vec3 _363 = texture2D(Texture3Texture, VARYING0).xyz + ((_313 * ((vec3(max(max(max(_312.x, _312.y), _312.z) - CB1[7].y, 0.0)) * CB1[7].x) * 3.2999999523162841796875)) * 2.0);
    vec3 _326 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 _333 = mix(((_313 * _313) * 4.0) + ((_363 * _363) * 4.0), (_326 * _326) * 4.0, vec3(CB1[4].x));
    vec3 _448 = _333 * CB1[5].x;
    vec3 _466 = ((_333 * (_448 + vec3(CB1[5].y))) / ((_333 * (_448 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    gl_FragData[0] = vec4(dot(_466, CB1[1].xyz) + CB1[1].w, dot(_466, CB1[2].xyz) + CB1[2].w, dot(_466, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1
