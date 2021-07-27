varying vec2 vUv;

void main()
{
    //pattern 3
    // float strength = vUv.x;
    //pattern 4
    // float strength = vUv.y;
    //pattern 5
    // float strength = 1.0 - vUv.y;

    //pattern 6
    // float strength = vUv.y * 10.0;

    //pattern 7 
    // float strength = mod(vUv.y *10.0 , 1.0);
    gl_FragColor = vec4(vec3(strength), 1.0);
}