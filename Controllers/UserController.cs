using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("[controller]/[action]")]
public class UserController : Controller {
    private DatabaseConnector DBConn = new DatabaseConnector();

    /* Create new User and Login the new User*/
    [HttpPost]
    public IActionResult Create( [FromForm] string email, [FromForm] string password) {

    }

    /* Authenticate the User and Create a new Session */
    [HttpPost]
    public IActionResult Login( [FromForm] string email, [FromForm] string password) {

    }

    /* Log the User Out */
    [HttpPost]
    public IActionResult Logout([FromForm] string email) {

    }

    /* Check if the Session Exists */

    static private bool IsLoggedIN(string SessionCookie) {

    }

    /* Get The User Id Corresponding with the SessionCookie */
    static private Int64 GetUser(string SessionCookie) {

    }
}