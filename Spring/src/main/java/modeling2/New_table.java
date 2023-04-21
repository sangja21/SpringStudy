package modeling2;

import org.springframework.stereotype.Component;

@Component
public class New_table {
	// 프레임워크에서는 객체를 생성한다는 말이 없다. 
	// 객체를 주입한다고 표현한다. 
	// 객체로 선언된 클래스 위에 @component라는 annotation을 붙여 준다.

	int num;
	String title, content, code, date;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
