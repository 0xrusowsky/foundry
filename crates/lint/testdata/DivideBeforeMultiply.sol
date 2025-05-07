contract DivideBeforeMultiply {
    function arithmetic() public {
        (1 / 2) * 3; //~WARN: divide-before-multiply
        (1 * 2) / 3;
        ((1 / 2) * 3) * 4; //~WARN: divide-before-multiply
        ((1 * 2) / 3) * 4; //~WARN: divide-before-multiply
        (1 / 2 / 3) * 4; //~WARN: divide-before-multiply
        (1 / (2 + 3)) * 4; //~WARN: divide-before-multiply
        (1 / 2 + 3) * 4;
        (1 / 2 - 3) * 4;
        (1 + 2 / 3) * 4;
        (1 / 2 - 3) * 4;
        ((1 / 2) % 3) * 4;
        1 / (2 * 3 + 3);
        1 / ((2 / 3) * 3); //~WARN: divide-before-multiply
        1 / ((2 * 3) + 3);
    }
}
