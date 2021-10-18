
pip3 freeze | grep mkdocs
pip3 install -r requirements.txt

mkdocs serve

mkdocs build


aws s3 sync ./images s3://poc-mkdocs


aws iam get-user --region us-east-1 --user-name rafael.braga


arn:aws:sts::account:federated-user/user-name


aws sts get-federation-token --region us-east-1 --name adm.rsb@pottencial.com.br


,
        {
          "Sid": "AllowFederedUsers",
          "Effect": "Allow",
          "Principal": {"AWS":  "arn:aws:sts::027709334103:federated-user/adm.rsb@pottencial.com.br"},
          "Action": [
            "s3:*"
          ],
          "Resource": [
              "arn:aws:s3:::poc-mkdocs",
              "arn:aws:s3:::poc-mkdocs/*"
          ],
        }