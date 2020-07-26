package com.m2m.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.m2m.shoppingbackend.dao.CategoryDAO;
import com.m2m.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CateroyDaoImp implements CategoryDAO {
	private static List<Category> categories = new ArrayList<>();

	static {
		Category category = new Category();

		// Add First Category.
		category.setId(1);
		category.setName("Television");
		category.setDescription("This All What You Need To Know About Televisions");
		category.setImage_URL("Cat_1.png");

		categories.add(category);

		category = new Category();

		// Add Second Category.
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This All What You Need To Know About Mobiles");
		category.setImage_URL("Cat_2.png");

		categories.add(category);

		category = new Category();

		// Add Third Category.
		category.setId(1);
		category.setName("Labtop");
		category.setDescription("This All What You Need To Know About Laptops");
		category.setImage_URL("Cat_3.png");

		categories.add(category);
	}

	public List<Category> list() {
		return categories;
	}

	public Category get(int id) {
		for(Category category: categories) {
			if(category.getId() == id) return category;
		}
		
		return null;
	}

}
