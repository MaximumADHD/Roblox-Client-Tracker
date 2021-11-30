#version 110

uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    float f1 = f0.w;
    gl_FragData[0] = vec4(f0.xyz * ((f1 > 0.0) ? (1.0 / f1) : 1.0), f1);
}

//$$Texture0Texture=s0
