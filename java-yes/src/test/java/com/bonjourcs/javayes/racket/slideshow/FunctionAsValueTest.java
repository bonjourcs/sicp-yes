package com.bonjourcs.javayes.racket.slideshow;

import org.junit.jupiter.api.Test;

/**
 * @author Liang Chenghao
 * @date 2022-05-21
 */
class FunctionAsValueTest {

    @Test
    public void testFunctionAsValue() {
        FunctionAsValue fav = new FunctionAsValue();
        fav.show(System.out::println, 10);
    }

}