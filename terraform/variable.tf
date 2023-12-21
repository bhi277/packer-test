provider "aws" {
  region     = "${{ secrets.ACCESS_KEY }}"
  access_key = "${{ secrets.SECRET_KEY }}"
  secret_key = "${{ secrets.REGION }}"
}
