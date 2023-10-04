package net.sajninja.sajsenchantments.enchantments;

import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.*;
import net.minecraft.world.item.AxeItem;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.enchantment.DamageEnchantment;
import net.minecraft.world.item.enchantment.Enchantment;
import net.minecraft.world.item.enchantment.EnchantmentCategory;
import net.minecraft.world.item.enchantment.Enchantments;

public class ModDamageEnchantment extends Enchantment {

    public final int type;

    protected ModDamageEnchantment(Rarity rarity, int type, EnchantmentCategory category, EquipmentSlot... slot) {
        super(rarity, category, slot);
        this.type = type;
    }

    @Override
    protected boolean checkCompatibility(Enchantment enchantment) {
        if (enchantment instanceof ModDamageEnchantment || enchantment instanceof DamageEnchantment) {
            return false;
        }
        return super.checkCompatibility(enchantment);
    }

    public boolean canEnchant(ItemStack itemStack) {
        return itemStack.getItem() instanceof AxeItem ? true : super.canEnchant(itemStack);
    }

    @Override
    public int getMaxLevel() {
        return 5;
    }

//    public float getDamageBonus(int i, MobCategory mobCategory, MobType mobType) {
////        return 10f;
//        if (this.type == 0 && mobCategory == MobCategory.CREATURE) {
//            return 1.0F + (float)Math.max(0, i - 1) * 0.5F;
//        } else {
//            return this.type == 1 && mobType == MobType.ILLAGER ? (float) i * 2.5F : 0.0F;
//        }
//    }

    public float getDamageBonus(int i, MobType mobType) {
        if (this.type == 1 && mobType == MobType.ILLAGER) {
            return (float)i * 2.5F;
        } else if (this.type == 0 && mobType == MobType.UNDEFINED) {
            return (float)i * 1.5F;
        } else {
            return 0.0f;
        }
    }

//    public float getDamageBonus(int i, MobType mobType) {
//        if (this.type == 0 && mobType == MobType.UNDEFINED) {
//            return (float)i * 2.5F;
//        } else {
//            return 0.0f;
//        }
//    }

    public void doPostAttack(LivingEntity user, Entity target, int integer) {
        if (target instanceof LivingEntity livingentity) {
            if (this.type == 1 && integer > 0 && livingentity.getMobType() == MobType.ILLAGER) {
                int i = 20 + user.getRandom().nextInt(10 * integer);
                livingentity.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, i, 3));
            } else if (this.type == 0 && integer > 0 && livingentity.getMobType() == MobType.UNDEFINED) {
                int i = 20 + user.getRandom().nextInt(10 * integer);
                livingentity.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, i, 3));
            }
        }

    }
}