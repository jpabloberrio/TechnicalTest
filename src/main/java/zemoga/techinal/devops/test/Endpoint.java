package zemoga.techinal.devops.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController()
@RequestMapping("/user")
public class Endpoint {

  @GetMapping
  public String greetUser(@RequestParam String name) {
    return "Hello to Zemoga techinal test " + name;
  }
}
