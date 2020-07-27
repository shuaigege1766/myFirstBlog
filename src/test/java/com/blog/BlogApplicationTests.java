package com.blog;

import com.blog.dao.BlogDao;
import com.blog.dao.UserDao;
import com.blog.pojo.Blog;
import com.blog.pojo.Tag;
import com.blog.pojo.Type;
import com.blog.pojo.User;
import com.blog.service.BlogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@SpringBootTest
class BlogApplicationTests {
	  @Autowired
	BlogService blogService;
	  @Autowired
	  UserDao userDao;
	@Test
	void contextLoads() {

//			PageHelper.startPage(1, 6);
//			List<Blog> allBlog = blogService.getIndexBlog();
////			List<Type> allType = typeService.getBlogType();  //获取博客的类型(联表查询)
////			List<Tag> allTag = tagService.getBlogTag();  //获取博客的标签(联表查询)
////			List<Blog> recommendBlog =blogService.getAllRecommendBlog();  //获取推荐博客
//			//得到分页结果对象
//			//2个参数 第一个参数是第几页，第二个参数是一页得大小 比如这里 一页8条数据
//
//			PageInfo pageInfo = new PageInfo(allBlog);
//		List<Blog> list = (List<Blog>) pageInfo.getList();
//		for(Blog blog:list){
//			System.out.println(blog);
//		}
//		System.out.println(pageInfo.getPageNum()); //总页数
//		System.out.println(pageInfo.getPageSize()); //一页得大小
//		System.out.println(pageInfo.getSize());  //当前页得大小
//		System.out.println(pageInfo.getPages());   //当前页
		User admin = userDao.queryByUsernameAndPassword("admin", "123456");
		System.out.println(admin);

	}

}
