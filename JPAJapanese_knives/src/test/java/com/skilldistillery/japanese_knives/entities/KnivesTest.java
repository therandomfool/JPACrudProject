package com.skilldistillery.japanese_knives.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class KnivesTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Knives knives;
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		
		emf = Persistence.createEntityManagerFactory("Japannese_Knives");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		knives = em.find(Knives.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		knives = null;
	}

	@Test
	void test() {
		assertNotNull(knives);
		assertEquals("Anryu Kurouchi", knives.getName());
	}

}
