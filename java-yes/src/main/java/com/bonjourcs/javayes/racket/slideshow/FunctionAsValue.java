package com.bonjourcs.javayes.racket.slideshow;

/**
 * @author Liang Chenghao
 * @date 2022-05-21
 */
public class FunctionAsValue {

    public void show(Util util, int arg) {
        util.show(arg);
        util.show(2 * arg);
        util.show(3 * arg);
    }

    @FunctionalInterface
    public interface Util {
        void show(int arg);
    }
}
