import com.sun.deploy.nativesandbox.comm.Response;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ContentType;
import org.apache.http.impl.client.DefaultHttpClient;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpRequest;
import project.DTO.EmployeeDTO;
import project.Model.Employee;
import project.Model.Project;
import project.DTO.ProjectDTO;
import project.Repository.ProjectRepository;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class ProjectTest  {
    @Autowired
    ProjectRepository projectRepository;
    @Test
    public void test200Response() throws Exception{
        DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpGet getRequest = new HttpGet("http://localhost:8080/project");
        HttpResponse response = httpClient.execute(getRequest);
        assertEquals(200, response.getStatusLine().getStatusCode());
        }
    @Test
    public void testLength() throws Exception {
        DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpGet getRequest = new HttpGet("http://localhost:8080/project");
        HttpResponse response = httpClient.execute(getRequest);
        Assert.assertFalse(response.getEntity().getContentLength()==0);
    }
    

}
