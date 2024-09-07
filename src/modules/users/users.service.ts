import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Injectable()
export class UsersService {
  create(createUserDto: CreateUserDto) {
    return 'This action adds a ndsew udddsadsdsser';
  }

  findAll() {
    return `This action returns  `;
  }

  findOne(id: number) {
    return `This action returns a #${id} duser`;
  }

  update(id: number, updateUserDto: UpdateUserDto) {
    return `This action updates adsdsdsddsaddsads #${id} user`;
  }

  remove(id: number) {
    return `This action removes a #${id} user`;
  }
}
