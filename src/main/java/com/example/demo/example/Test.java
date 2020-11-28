package com.example.demo.example;

public class Test {

	public static void main(String[] args) {
		for (int i = 0; i < 100; i++) {
			System.out.println("Hello World Ping " + i );
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
