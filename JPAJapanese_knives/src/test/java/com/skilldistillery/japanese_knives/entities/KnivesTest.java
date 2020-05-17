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
		assertEquals("Gyuto", knives.getName());
		assertEquals("Minamoto Hamon", knives.getMaker());
		assertEquals("", knives.getConstruction());
		assertEquals("19C27", knives.getSteel());
		assertEquals("", knives.getCladding());
		assertEquals("pakka wood", knives.getHandle());
		assertEquals("", knives.getEdge());
		assertEquals("5 oz", knives.getWeight());
		assertEquals("184 mm", knives.getBladeLength());
		assertEquals("308mm", knives.getTotalLength());
		assertEquals("1.7 mm", knives.getSpineThickness());
		assertEquals("43.49", knives.getBladeHeight());
		assertEquals(
				"Minamoto 19C27 Hamon Gyuto 185mm. This is an awesome little gyuto. It is small enough to do detail work, but it has the heft needed for larger jobs. The steel used, 19C27 is well known for its excellent edge retention and ease of sharpening. The pakka wood handle and the hamon finish give these knives great aesthetics",
				knives.getDescription());
		assertEquals("minamoto-hamon-gyuto-185mm-20.jpeg", knives.getImgLink());
	}

}
