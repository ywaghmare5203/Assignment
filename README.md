

# ------------------------User-------------------
# Login
# curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"user":{"email":"test@gmail.com", "password":"123456789"}}'  http://localhost:3000/api/v1/login

# Create User
# curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"user":{"email":"test@gmail.com","name":"Test", "username":"atest123", "password":"123456789", "password_confirmation":"123456789"}}'  http://localhost:3000/api/v1/user

# Get All User
# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2NDM2MjAwOTF9.nUVnIuiLkb9XncLPmKWAoncJvuuSqStCAjVAwx_clnY" -H "Accept: application/json" -H "Content-type: application/json" -X GET http://localhost:3000/api/v1/user

# ------------------------Post-------------------
#create Post
# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2NDM2MjAwOTF9.nUVnIuiLkb9XncLPmKWAoncJvuuSqStCAjVAwx_clnY" -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"post":{"title":"New Post","description":"Hello Dear, I am here.........!"}}'  http://localhost:3000/api/v1/post

# Get Post By ID
# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2NDM2MjAwOTF9.nUVnIuiLkb9XncLPmKWAoncJvuuSqStCAjVAwx_clnY" -H "Accept: application/json" -H "Content-type: application/json" -X GET http://localhost:3000/api/v1/post/1

# Get All Post
# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2NDM2MjAwOTF9.nUVnIuiLkb9XncLPmKWAoncJvuuSqStCAjVAwx_clnY" -H "Accept: application/json" -H "Content-type: application/json" -X GET http://localhost:3000/api/v1/post

# ------------------------Comment-------------------
#create Comment
# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2NDM2MjAwOTF9.nUVnIuiLkb9XncLPmKWAoncJvuuSqStCAjVAwx_clnY" -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"comment":{"comment_text":"Nice Post", "post_id":1}}'  http://localhost:3000/api/v1/comment

# ------------------------Like-------------------
# Create Like
# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2NDM2MjAwOTF9.nUVnIuiLkb9XncLPmKWAoncJvuuSqStCAjVAwx_clnY" -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"like":{"likeable_id":1, "likeable_type":"post"}}'  http://localhost:3000/api/v1/like

